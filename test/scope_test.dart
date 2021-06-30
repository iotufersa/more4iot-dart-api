import 'package:more4iot_dart_api/more4iot_dart_api.dart';
import 'package:test/test.dart';

void main() {
  group('Scope Tests', () {
    Scope scope =
        Scope(data: {'soil-moisture': 70}, commands: {'water-pump': true});

    setUp(() {
      // Additional setup goes here.
    });

    test('scope commands', () {
      expect(scope.commands, isNotNull);
    });

    test('scope data', () {
      expect(scope.data, isNotNull);
    });

    test('scope getCommand', () {
      expect(scope.getCommand('water-pump'), isTrue);
    });

    test('scope getData', () {
      expect(scope.getData('soil-moisture'), isPositive);
    });
  });
}
