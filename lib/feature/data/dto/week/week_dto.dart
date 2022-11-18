import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';
part 'week_dto.g.dart';
@JsonSerializable()
class WeekDto{
  final String week;

  WeekDto({required this.week});
  factory WeekDto.fromJson(Map<String, dynamic> json) => _$WeekDtoFromJson(json);
  Map<String, dynamic> toJson() => _$WeekDtoToJson(this);
  WeekEntiti toEntiti(){
    return WeekEntiti(week: week);
  }
}