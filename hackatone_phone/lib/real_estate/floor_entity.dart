import 'package:json_annotation/json_annotation.dart';
part 'floor_entity.g.dart';
@JsonSerializable()
class Floor{
  @JsonKey(name: 'apart_floor')
  final String apartFloor;
  @JsonKey(name: 'apart_price')
  final String apartPrice;
  @JsonKey(name: 'apart_profit')
  final int apartProfit;

  Floor({required this.apartFloor, required this.apartPrice, required this.apartProfit});
  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
  Map<String, dynamic> toJson() => _$FloorToJson(this);
}