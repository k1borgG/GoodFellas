// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'both_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Both _$BothFromJson(Map<String, dynamic> json) => Both(
      apartments: (json['apartments'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      cottege: (json['cottege'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      parking: (json['parking'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      commercial: (json['commercial'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BothToJson(Both instance) => <String, dynamic>{
      'apartments': instance.apartments,
      'cottege': instance.cottege,
      'parking': instance.parking,
      'commercial': instance.commercial,
    };
