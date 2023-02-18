import 'package:json_annotation/json_annotation.dart';

import 'spec_entity.dart';

part 'res_complex_entity.g.dart';
@JsonSerializable()
class Apartment{
  String apartName;
  List<Spec> specs;
  Apartment({required this.apartName, required this.specs});
factory Apartment.fromJson(Map<String, dynamic> json) => _$ApartmentFromJson(json);
  Map<String, dynamic> toJson() => _$ApartmentToJson(this);
}