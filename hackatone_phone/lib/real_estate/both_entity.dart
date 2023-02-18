import 'package:hackatone_phone/real_estate/res_complex_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'both_entity.g.dart';

@JsonSerializable()
class Both {
  List<Apartment> apartment;
  List<Apartment> cottege;
  List<Apartment> parking;
  List<Apartment> commercial;
  Both(
      {required this.apartment,
      required this.cottege,
      required this.parking,
      required this.commercial});
  factory Both.fromJson(Map<String, dynamic> json) => _$BothFromJson(json);
  Map<String, dynamic> toJson() => _$BothToJson(this);
}
