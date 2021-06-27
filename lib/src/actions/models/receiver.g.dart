// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receiver _$ReceiverFromJson(Map<String, dynamic> json) {
  return Receiver(
    identifiers:
        (json['identifiers'] as List<dynamic>).map((e) => e as String).toList(),
    protocol: json['protocol'] as String?,
    uri: json['uri'] as String?,
  );
}

Map<String, dynamic> _$ReceiverToJson(Receiver instance) => <String, dynamic>{
      'identifiers': instance.identifiers,
      'protocol': instance.protocol,
      'uri': instance.uri,
    };
