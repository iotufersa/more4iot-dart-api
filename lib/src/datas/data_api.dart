import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:more4iot_dart_api/src/datas/models/data.dart';

part 'data_api.g.dart';

@RestApi()
abstract class DataRestClient {
  factory DataRestClient(Dio dio, {String baseUrl}) = _DataRestClient;

  @GET('/datas')
  Future<List<Data>> getDatas();
  @GET('/datas/last/{uuid}')
  Future<Data> getLastDataFromUuid(@Path() String uuid);
  @GET('/datas/{uuid}')
  Future<List<Data>> getDatasFromUuid(@Path() String uuid);
  @DELETE('/datas/delete/{uuid}')
  Future<dynamic> delete(@Path() String uuid);
}
