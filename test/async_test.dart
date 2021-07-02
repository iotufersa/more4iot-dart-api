import 'package:more4iot_dart_api/more4iot_dart_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("Async tests ", () {
    final more4iot = More4iotMqtt();

    test('subscribe topic', () async {
      final value = await more4iot.connect(callback, 'application');
      expect(value, isTrue);
    });
  });
}

void callback(Scope scope) {
  print(scope.toJson());
}
