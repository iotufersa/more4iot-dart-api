import 'dart:convert';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'dart:async';

import 'scope.dart';

class More4iotMqtt {
  late MqttServerClient client;
  String host;
  int port;
  String user;
  String pass;

  More4iotMqtt(
      {this.host = 'localhost',
      this.port = 1883,
      this.user = 'more4iot',
      this.pass = '1234'}) {
    client = MqttServerClient.withPort(host, '', port);
  }

  Future<bool> connect(Function(Scope) callback, String topic) async {
    client.logging(on: true);

    /// If you intend to use a keep alive you must set it here otherwise keep alive will be disabled.
    client.keepAlivePeriod = 30;

    do {
      print('client not connected');
      print('connecting...');
      try {
        await client.connect(user, pass);
      } on Exception catch (e) {
        print('client exception - $e');
      }
    } while (
        !(client.connectionStatus!.state == MqttConnectionState.connected));
    print('client connected');

    client.subscribe(topic, MqttQos.atMostOnce);

    client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      c!.forEach((e) {
        if (e.topic.contains(topic)) {
          final msg = e.payload as MqttPublishMessage;
          final pString =
              MqttPublishPayload.bytesToStringAsString(msg.payload.message!);

          final scope = Scope.fromJson(jsonDecode(pString));

          callback(scope);
        } else {
          print(e.toString());
        }
      });
    });

    return true;
  }
}
