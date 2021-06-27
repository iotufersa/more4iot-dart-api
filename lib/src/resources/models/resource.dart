import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable(explicitToJson: true)
class Resource {
  String? uuid;
  String? name;
  double? lat;
  double? lon;
  List<String>? resource;
  String? uri;
  String? protocol;
  String? describe;
  bool? isDevice;

  Resource(
      {this.uuid,
      this.name,
      this.lat,
      this.lon,
      this.resource,
      this.uri,
      this.protocol,
      this.describe,
      this.isDevice});

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
