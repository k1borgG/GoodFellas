import 'package:json_annotation/json_annotation.dart';
part 'spec_entity.g.dart';

@JsonSerializable()
class Spec {
  @JsonKey(name: 'apart_spec')
  String apartSpec;
  @JsonKey(name: 'apart_floor')
  final String apartFloor;
  @JsonKey(name: 'apart_price')
  final int apartPrice;
  @JsonKey(name: 'apart_profit')
  final int apartProfit;
  Spec(
      {required this.apartSpec, required this.apartFloor,
      required this.apartPrice,
      required this.apartProfit});
  factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);
  Map<String, dynamic> toJson() => _$SpecToJson(this);
}
