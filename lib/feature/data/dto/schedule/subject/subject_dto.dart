import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subject/subject_entiti.dart';
part 'subject_dto.g.dart';

@JsonSerializable()
class SubjectDto extends SubjectEntiti {
  SubjectDto({
    required final String subject,
    required final String week,
  }) : super(
          subject: subject,
          week: week,
        );
  factory SubjectDto.fromJson(Map<String, dynamic> json) => SubjectDto(
        subject: json['sub'] as String,
        week: json['week'] ?? "",
      );
  Map<String, dynamic> toJson(){
    return {
      "sub": subject,
      "week": week
    };
  }
}
