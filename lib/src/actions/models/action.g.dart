// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Action _$ActionFromJson(Map<String, dynamic> json) {
  return Action(
    creator: json['creator'] as String?,
    origin:
        (json['origin'] as List<dynamic>?)?.map((e) => e as String).toList(),
    receiver: json['receiver'] == null
        ? null
        : Receiver.fromJson(json['receiver'] as Map<String, dynamic>),
    scope: json['scope'] as Map<String, dynamic>?,
    lifetime: json['lifetime'] == null
        ? null
        : Lifetime.fromJson(json['lifetime'] as Map<String, dynamic>),
    status: json['status'] as bool?,
    id: json['_id'] as String?,
    v: json['__v'] as int?,
    createdAt: json['createdAt'] as String?,
    updatedAt: json['updatedAt'] as String?,
  );
}

Map<String, dynamic> _$ActionToJson(Action instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('__v', instance.v);
  val['creator'] = instance.creator;
  val['origin'] = instance.origin;
  val['receiver'] = instance.receiver?.toJson();
  val['scope'] = instance.scope;
  val['lifetime'] = instance.lifetime?.toJson();
  val['status'] = instance.status;
  return val;
}
