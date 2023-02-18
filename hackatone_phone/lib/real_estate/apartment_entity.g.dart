// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
      category: json['category'] as String,
      apartmentInfo: ApartmentInfo.fromJson(
          json['apartment_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
      'category': instance.category,
      'apartment_info': instance.apartmentInfo,
    };
