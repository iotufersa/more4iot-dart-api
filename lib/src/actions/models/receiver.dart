import 'package:json_annotation/json_annotation.dart';

part 'receiver.g.dart';

@JsonSerializable()
class Receiver {
  List<String> identifiers;
  String? protocol;
  String? uri;

  Receiver({this.identifiers = const [], this.protocol, this.uri});

  factory Receiver.fromJson(Map<String, dynamic> json) =>
      _$ReceiverFromJson(json);
  Map<String, dynamic> toJson() => _$ReceiverToJson(this);
}
