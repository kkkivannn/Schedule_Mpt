import 'package:schedule_mpt/feature/data/dto/schedule/info/info_dto.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/subjects/subjects_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/info/info_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subjects/subjects_entiti.dart';

class ScheduleDto extends ScheduleEntiti {
  ScheduleDto({
    required final InfoEntiti info,
    required final List<SubjectsEntiti> subjects,
  }) : super(info: info, subjects: subjects);
  factory ScheduleDto.fromJson(Map<String, dynamic> json) => ScheduleDto(
        info: InfoDto.fromJson(json['info']),
        subjects: List<SubjectsDto>.from(
          (json["subjects"] as List<dynamic>)
              .map((x) => SubjectsDto.fromJson(x))
              .toList(),
        ),
      );
  Map<String, dynamic> toJson() {
    return {
      "info": info,
      "subjects": subjects,
    };
  }
}
