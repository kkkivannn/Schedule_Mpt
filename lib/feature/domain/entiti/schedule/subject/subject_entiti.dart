import 'package:freezed_annotation/freezed_annotation.dart';
part 'subject_entiti.freezed.dart';
part 'subject_entiti.g.dart';
@freezed
class SubjectEntiti with _$SubjectEntiti{
  const factory SubjectEntiti({
    required final String subject,
    required final String week,
  }) = _SubjectEntiti;
  factory SubjectEntiti.fromJson(Map<String, dynamic> json) => _$SubjectEntitiFromJson(json);
}
