// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return Resource(
    uuid: json['uuid'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    resource:
        (json['resource'] as List<dynamic>?)?.map((e) => e as String).toList(),
    uri: json['uri'] as String?,
    protocol: json['protocol'] as String?,
    describe: json['describe'] as String?,
    isDevice: json['isDevice'] as bool?,
  );
}

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'resource': instance.resource,
      'uri': instance.uri,
      'protocol': instance.protocol,
      'describe': instance.describe,
      'isDevice': instance.isDevice,
    };
