import 'package:json_annotation/json_annotation.dart';
import 'package:more4iot_dart_api/src/actions/models/lifetime.dart';
import 'package:more4iot_dart_api/src/actions/models/receiver.dart';

part 'action.g.dart';

@JsonSerializable(explicitToJson: true)
class Action {
  @JsonKey(name: '_id', includeIfNull: false)
  String? id;
  @JsonKey(includeIfNull: false)
  String? createdAt;
  @JsonKey(includeIfNull: false)
  String? updatedAt;
  @JsonKey(name: '__v', includeIfNull: false)
  int? v;

  String? creator;
  List<String>? origin;
  Receiver? receiver;
  Map<String, dynamic>? scope;
  Lifetime? lifetime;
  bool? status;

  Action(
      {this.creator,
      this.origin = const [],
      this.receiver,
      this.scope,
      this.lifetime,
      this.status = true,
      this.id,
      this.v,
      this.createdAt,
      this.updatedAt});

  /* Action copyWith(
      {String? creator,
      List<String>? origin,
      Map<String, dynamic>? receiver,
      Map<String, dynamic>? scope,
      Lifetime? lifetime,
      bool? status,
      String? id,
      int? v,
      String? createdAt,
      String? updatedAt}) {
    return Action(
      creator: creator ?? this.creator,
    );
  } */

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
  Map<String, dynamic> toJson() => _$ActionToJson(this);
}

/* class ActionBuilder {
  String _id;
  String createdAt;
  String updatedAt;
  int __v;

  String creator;
  List<String> origin;
  Map<String, dynamic> receiver;
  Map<String, dynamic> scope;
  Map<String, dynamic> lifetime;
  bool status;
} */
