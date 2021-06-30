import 'package:json_annotation/json_annotation.dart';

part 'scope.g.dart';

@JsonSerializable()
class Scope {
  Map<String, dynamic>? data;
  Map<String, dynamic>? commands;

  Scope({this.data, this.commands});

  factory Scope.fromJson(Map<String, dynamic> json) => _$ScopeFromJson(json);
  Map<String, dynamic> toJson() => _$ScopeToJson(this);

  T getCommand<T>(String key) {
    return commands?[key];
  }

  T getData<T>(String key) {
    return data?[key];
  }
}
