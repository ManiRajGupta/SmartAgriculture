# Smart Agriculture App

A flutter application providing a smart agriculture to everyone, based on MQTT protocol for sending/receiving data through the web.

### Run Instructions:

```bash
./iot_device/pub_temp.py
./iot_device/pub_humid.py

./computation_server/main.py

cd flutter_app
flutter run -d <device-id> --release --no-sound-null-safety
```
