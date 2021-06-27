import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  String? uuid;
  double? lat;
  double? lon;
  Map<String, dynamic>? data;

  Data({this.uuid, this.lat, this.lon, this.data});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
