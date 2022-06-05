#!/usr/bin/env python3

import paho.mqtt.client as mqtt
import random
import time

def on_connect(client, userdata, flags, rc):
    print(f"Connected with result code {rc}")

client = mqtt.Client()
client.on_connect = on_connect
client.connect("broker.emqx.io", 1883, 60)

client.loop_start()
while True:
    i = random.uniform(30, 40)
    client.publish('raspberry/temperature', payload=i, qos=2, retain=True)
    print(f"send {i} to raspberry/temperature")
    time.sleep(1)

client.loop_stop()
client.disconnect()

