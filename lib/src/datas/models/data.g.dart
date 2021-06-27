// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    uuid: json['uuid'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    data: json['data'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'lat': instance.lat,
      'lon': instance.lon,
      'data': instance.data,
    };
