// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Floor _$FloorFromJson(Map<String, dynamic> json) => Floor(
      apartFloor: json['apartFloor'] as String,
      apartPrice: json['apartPrice'] as String,
      apartProfit: json['apartProfit'] as int,
    );

Map<String, dynamic> _$FloorToJson(Floor instance) => <String, dynamic>{
      'apartFloor': instance.apartFloor,
      'apartPrice': instance.apartPrice,
      'apartProfit': instance.apartProfit,
    };
