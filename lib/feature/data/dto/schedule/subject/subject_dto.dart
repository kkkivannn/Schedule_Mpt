
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subject/subject_entiti.dart';
part 'subject_dto.g.dart';

@JsonSerializable()
class SubjectDto {
  final String subject;
  final String week;

  SubjectDto({
    required this.subject,
    required this.week,
  });
  factory SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectDtoToJson(this);
}
