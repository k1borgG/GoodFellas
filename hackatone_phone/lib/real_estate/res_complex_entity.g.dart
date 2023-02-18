// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_complex_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
      apartName: json['apartName'] as String,
      specs: (json['specs'] as List<dynamic>)
          .map((e) => Spec.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
      'apartName': instance.apartName,
      'specs': instance.specs,
    };
