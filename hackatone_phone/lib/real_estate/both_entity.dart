import 'package:hackatone_phone/real_estate/apartment_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'both_entity.g.dart';

@JsonSerializable()
class Both {
  List<Apartment> apartment;
  
  Both(
      {required this.apartment,
      });
  factory Both.fromJson(Map<String, dynamic> json) => _$BothFromJson(json);
  Map<String, dynamic> toJson() => _$BothToJson(this);
}
