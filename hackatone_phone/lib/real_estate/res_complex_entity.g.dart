// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_complex_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
      apartName: json['apart_name'] as String,
      apartImg: json['apart_img'] as String,
      specs: (json['specs'] as List<dynamic>)
          .map((e) => Spec.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
      'apart_name': instance.apartName,
      'apart_img': instance.apartImg,
      'specs': instance.specs,
    };
