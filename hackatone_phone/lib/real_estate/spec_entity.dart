import 'package:json_annotation/json_annotation.dart';

import 'floor_entity.dart';

part 'spec_entity.g.dart';

@JsonSerializable()
class Spec {
  @JsonKey(name: 'apart_spec')
  String apartSpec;
  List<Floor> floors;
  Spec({required this.apartSpec, required this.floors});
  factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);
  Map<String, dynamic> toJson() => _$SpecToJson(this);
}
