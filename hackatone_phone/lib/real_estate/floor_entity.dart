import 'package:json_annotation/json_annotation.dart';
part 'floor_entity.g.dart';
@JsonSerializable()
class Floor{
  
  String apartFloor;
  String apartPrice;
  int apartProfit;

  Floor({required this.apartFloor, required this.apartPrice, required this.apartProfit});
  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
  Map<String, dynamic> toJson() => _$FloorToJson(this);
}