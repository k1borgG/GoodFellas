// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spec_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spec _$SpecFromJson(Map<String, dynamic> json) => Spec(
      apartSpec: json['apart_spec'] as String,
      floors: (json['floors'] as List<dynamic>)
          .map((e) => Floor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecToJson(Spec instance) => <String, dynamic>{
      'apart_spec': instance.apartSpec,
      'floors': instance.floors,
    };
