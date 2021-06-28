import 'package:json_annotation/json_annotation.dart';
import 'package:more4iot_dart_api/src/resources/models/resource.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'resource_api.g.dart';

@RestApi()
abstract class ResourceRestClient {
  factory ResourceRestClient(Dio dio, {String baseUrl}) = _ResourceRestClient;

  @GET('/resources')
  Future<List<Resource>> getResources();
  @POST('/resources/inscribe')
  Future<dynamic> inscribe(@Body() Resource resource);
  @PUT('/resources/update')
  Future<dynamic> update(@Body() Resource resource);
  @GET('/resources/{uuid}')
  Future<Resource> getResourceFromUuid(@Path() String uuid);
  @GET('/resources/verify/{uuid}')
  Future<bool> verify(@Path() String uuid);
  @DELETE('/resources/delete/{uuid}')
  Future<dynamic> delete(@Path() String uuid);
}
