// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Floor _$FloorFromJson(Map<String, dynamic> json) => Floor(
      apartFloor: json['apart_floor'] as String,
      apartPrice: json['apart_price'] as String,
      apartProfit: json['apart_profit'] as int,
    );

Map<String, dynamic> _$FloorToJson(Floor instance) => <String, dynamic>{
      'apart_floor': instance.apartFloor,
      'apart_price': instance.apartPrice,
      'apart_profit': instance.apartProfit,
    };
