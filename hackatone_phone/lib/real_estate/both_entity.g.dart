// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'both_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Both _$BothFromJson(Map<String, dynamic> json) => Both(
      apartment: (json['apartment'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BothToJson(Both instance) => <String, dynamic>{
      'apartment': instance.apartment,
    };
