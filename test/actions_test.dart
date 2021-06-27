import 'package:more4iot_dart_api/more4iot_dart_api.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

final logger = Logger();

List<Action> actions = [
  Action(
    creator: 'resourceX',
    origin: [],
    receiver: Receiver(
        identifiers: ['indentifier1', 'identifier2'],
        protocol: 'coap',
        uri: '192.168.0.189:5683'),
    lifetime: Lifetime(validity: true, count: 1),
    scope: <String, dynamic>{
      "data": <String, dynamic>{},
      "commands": <String, dynamic>{"water-pump": true}
    },
    status: true,
  ),
];

void main() {
  group('Actions Rest API Tests', () {
    final dio = Dio();
    final client = ActionRestClient(dio, baseUrl: 'http://192.168.0.186:3666');

    //dio.options.headers['accept'] = '*/*';

    setUp(() {
      // Additional setup goes here.
    });

    test('Get all actions', () async {
      List<Action> list = await client.getActions();

      list.forEach((element) => logger.i(element.toJson()));

      expect(list.isNotEmpty, isTrue);
    });

    test('inscribe action', () async {
      dynamic res = await client.inscribe(actions.elementAt(0));

      logger.i(res);

      expect(res, isNotNull);
    });

    test('get actions from uuid', () async {
      List<Action> list = await client.getActionsFromUuid('resourceX');

      list.forEach((element) => logger.i(element.toJson()));

      expect(list.isNotEmpty, isTrue);
    });

    test('delete action from id', () async {
      bool res = await client.delete('60d8ac98c1fd2300132bce88');

      logger.i(res);

      expect(res, isTrue);
    });
  });
}
