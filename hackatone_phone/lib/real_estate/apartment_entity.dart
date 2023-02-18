import 'package:json_annotation/json_annotation.dart';

import 'apartment_info_entity.dart';

part 'apartment_entity.g.dart';

@JsonSerializable()
class Apartment {
  
  String category;
  @JsonKey(name: 'apartment_info')
  ApartmentInfo apartmentInfo;
  
  Apartment(
      {required this.category, required this.apartmentInfo});
  factory Apartment.fromJson(Map<String, dynamic> json) =>
      _$ApartmentFromJson(json);
  Map<String, dynamic> toJson() => _$ApartmentToJson(this);
}
