import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/info/info_entiti.dart';

part 'info_dto.g.dart';
@JsonSerializable()
class InfoDto {
  final String day;
  final String place;

  InfoDto({
    required this.day,
    required this.place,
  });
  factory InfoDto.fromJson(Map<String, dynamic> json) => _$InfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoDtoToJson(this);
  InfoEntiti toEntiti(){
    return InfoEntiti(day: day, place: place);
  }
}
