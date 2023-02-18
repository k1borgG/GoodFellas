// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApartmentInfo _$ApartmentInfoFromJson(Map<String, dynamic> json) =>
    ApartmentInfo(
      apartName: json['apart_name'] as String,
      apartImg: json['apart_img'] as String,
      spec: Spec.fromJson(json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApartmentInfoToJson(ApartmentInfo instance) =>
    <String, dynamic>{
      'apart_name': instance.apartName,
      'apart_img': instance.apartImg,
      'spec': instance.spec,
    };
