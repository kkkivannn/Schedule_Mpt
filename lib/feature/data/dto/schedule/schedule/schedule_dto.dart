import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/subjects/subjects_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';

import '../info/info_dto.dart';
part 'schedule_dto.g.dart';

@JsonSerializable()
class ScheduleDto {
  final dynamic info;
  final dynamic subjects;

  ScheduleDto({
    required this.info,
    required this.subjects,
  });
  factory ScheduleDto.fromJson(Map<String, dynamic> json) => _$ScheduleDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleDtoToJson(this);
  ScheduleEntiti toEntiti(){
    return ScheduleEntiti(info: info, subjects: subjects);
  }
}
