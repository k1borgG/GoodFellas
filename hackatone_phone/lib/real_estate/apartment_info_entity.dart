import 'package:json_annotation/json_annotation.dart';

import 'spec_entity.dart';

part 'apartment_info_entity.g.dart';

@JsonSerializable()
class ApartmentInfo {
  @JsonKey(name: 'apart_name')
  String apartName;
  @JsonKey(name: 'apart_img')
  String apartImg;
  Spec spec;
  ApartmentInfo({required this.apartName, required this.apartImg,required this.spec});
  factory ApartmentInfo.fromJson(Map<String, dynamic> json) => _$ApartmentInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ApartmentInfoToJson(this);
}
