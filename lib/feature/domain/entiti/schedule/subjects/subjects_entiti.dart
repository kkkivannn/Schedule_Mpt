import 'package:freezed_annotation/freezed_annotation.dart';

import '../subject/subject_entiti.dart';
part 'subjects_entiti.freezed.dart';
part 'subjects_entiti.g.dart';

@freezed
class SubjectsEntiti with _$SubjectsEntiti {
  const factory SubjectsEntiti({
    required final String number,
    required final SubjectEntiti subject,
    required final String teacher,
  }) = _SubjectsEntiti;
  factory SubjectsEntiti.fromJson(Map<String, dynamic> json) =>
      _$SubjectsEntitiFromJson(json);
}
  