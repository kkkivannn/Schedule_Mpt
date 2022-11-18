import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/subject/subject_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subjects/subjects_entiti.dart';
part 'subjects_dto.g.dart';

@JsonSerializable()
class SubjectsDto {
  final String number;
  final dynamic subject;
  final String teacher;

  SubjectsDto({
    required this.number,
    required this.subject,
    required this.teacher,
  });
  factory SubjectsDto.fromJson(Map<String, dynamic> json) => _$SubjectsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectsDtoToJson(this);
  SubjectsEntiti toEntiti(){
    return SubjectsEntiti(number: number, subject: subject, teacher: teacher);
  }
}
