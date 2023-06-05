import 'package:schedule_mpt/feature/data/dto/schedule/subject/subject_dto.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/teacher/teacher_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subject/subject_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subjects/subjects_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/teacher/teacher_entiti.dart';

class SubjectsDto extends SubjectsEntiti {
  SubjectsDto({
    required final String number,
    required final SubjectEntiti subject,
    required final TeacherEntiti teacher,
  }) : super(
          number: number,
          subject: subject,
          teacher: teacher,
        );
  factory SubjectsDto.fromJson(Map<String, dynamic> json) => SubjectsDto(
        number: json['number'],
        subject: SubjectDto.fromJson(json['subject']),
        teacher: TeacherDto.fromJson(json["teacher"]),
      );
  Map<String, dynamic> toJson() {
    return {
      "number": number,
      "subject": subject,
      "teacher": teacher,
    };
  }
}
