// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spec_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spec _$SpecFromJson(Map<String, dynamic> json) => Spec(
      apartSpec: json['apart_spec'] as String,
      apartFloor: json['apart_floor'] as String,
      apartPrice: json['apart_price'] as int,
      apartProfit: json['apart_profit'] as int,
    );

Map<String, dynamic> _$SpecToJson(Spec instance) => <String, dynamic>{
      'apart_spec': instance.apartSpec,
      'apart_floor': instance.apartFloor,
      'apart_price': instance.apartPrice,
      'apart_profit': instance.apartProfit,
    };
