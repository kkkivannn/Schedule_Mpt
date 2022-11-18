import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/specialities/specialities_entiti.dart';
part 'specialities_dto.g.dart';
@JsonSerializable()
class SpecialitiesDto{
  final List<String> specialities;

  SpecialitiesDto({required this.specialities});
  factory SpecialitiesDto.fromJson(Map<String, dynamic> json) => _$SpecialitiesDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SpecialitiesDtoToJson(this);
  SpecialitiesEntiti toEntiti(){
    return SpecialitiesEntiti(specialities: specialities);
  }
}