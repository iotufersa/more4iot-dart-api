// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifetime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lifetime _$LifetimeFromJson(Map<String, dynamic> json) {
  return Lifetime(
    validity: json['validity'] as bool,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$LifetimeToJson(Lifetime instance) => <String, dynamic>{
      'validity': instance.validity,
      'count': instance.count,
    };
