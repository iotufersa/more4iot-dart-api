import 'package:more4iot_dart_api/more4iot_dart_api.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

final logger = Logger();

List<Resource> resources = [
  Resource(
      describe: "device",
      isDevice: true,
      lat: 0.0,
      lon: 0.0,
      protocol: 'coap',
      uri: '192.168.0.189:5683/light',
      name: "light_bulb_01",
      resource: ['lightness']),
];

void main() {
  group('Resource Rest API Tests', () {
    final dio = Dio();
    final client = ResourceRestClient(dio, baseUrl: 'http://localhost:3666');

    //dio.options.headers['accept'] = '*/*';

    setUp(() {
      // Additional setup goes here.
    });

    test('Get all resource', () async {
      final list = await client.getResources();

      list.forEach((element) => logger.i(element.toJson()));

      expect(list.isNotEmpty, isTrue);
    });

    test('resource inscribe', () async {
      final res = await client.inscribe(resources.elementAt(0));

      logger.i(res);

      expect(res, isNotNull);
    });

    test('resource update', () async {
      var resource = Resource.fromJson(await client
          .getResourceFromUuid('0c948c90-d84f-11eb-8f11-7fc610c49041')
          .then((value) => value.toJson()));
      resource.name = 'light_bulb_03';

      Resource res = await client.update(resource);

      logger.i(res);

      expect(res.describe?.contains('light_bulb_03'), isTrue);
    });

    test('get resource from uuid', () async {
      final res = await client
          .getResourceFromUuid('b225a680-d84f-11eb-8f11-7fc610c49041');

      logger.i(res);

      expect(res, isNotNull);
    });

    test('verify resource by uuid', () async {
      final res = await client.verify('b225a680-d84f-11eb-8f11-7fc610c49041');

      logger.i(res);

      expect(res, isTrue);
    });

    test('delete resource from uuid', () async {
      bool res = await client.delete('0c948c90-d84f-11eb-8f11-7fc610c49041');

      logger.i(res);

      expect(res, isTrue);
    });
  });
}
