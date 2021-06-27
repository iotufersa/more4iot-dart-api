import 'package:json_annotation/json_annotation.dart';

part 'lifetime.g.dart';

@JsonSerializable()
class Lifetime {
  bool validity;
  int count;

  Lifetime({this.validity = false, this.count = 0});

  factory Lifetime.fromJson(Map<String, dynamic> json) =>
      _$LifetimeFromJson(json);
  Map<String, dynamic> toJson() => _$LifetimeToJson(this);
}
