#!/usr/bin/env python3

import paho.mqtt.client as mqtt
import time

latest_temperature=20
latest_humidity=25

def on_connect(client, userdata, flags, rc):
    print(f"Connected with result code {rc}")
    client.subscribe('raspberry/temperature')
    client.subscribe('raspberry/humidity')

def on_message(client, userdata, msg):
    global latest_temperature, latest_humidity
    if msg.topic == 'raspberry/temperature':
        latest_temperature = float(msg.payload)
    elif msg.topic == 'raspberry/humidity':
        latest_humidity = float(msg.payload)
    else:
        print(f"unknown msg on topic {msg.topic}: {msg.payload}")


client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message

client.will_set('raspberry/status', b'{"status": "Off"}')
client.connect("broker.emqx.io", 1883, 60)

client.loop_start()
while True:
   # Topic, sending content, QoS and whether retaining the message respectively
   i = (latest_humidity + latest_temperature) / 2
   client.publish('compute/result', payload=i, qos=2, retain=True)
   print(f"send {i} to compute/result")
   time.sleep(3)

# Reset retain value
# client.publish('raspberry/topic', payload='', qos=0, retain=True)

client.loop_stop()
client.disconnect()
