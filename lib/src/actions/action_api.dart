import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:more4iot_dart_api/src/actions/models/action.dart';

part 'action_api.g.dart';

@RestApi()
abstract class ActionRestClient {
  factory ActionRestClient(Dio dio, {String baseUrl}) = _ActionRestClient;

  @GET('/actions')
  Future<List<Action>> getActions();
  @POST('/actions/inscribe')
  Future<dynamic> inscribe(@Body() Action action);
  @GET('/actions/{uuid}')
  Future<List<Action>> getActionsFromUuid(@Path() String uuid);
  @DELETE('/actions/delete/{id}')
  Future<dynamic> delete(@Path() String id);
}
