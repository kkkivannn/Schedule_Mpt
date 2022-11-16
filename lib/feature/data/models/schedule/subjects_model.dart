import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subjects_entiti.dart';

import 'subject_model.dart';
part 'subjects_model.freezed.dart';
part 'subjects_model.g.dart';

@freezed
class SubjectsModel extends SubjectsEntiti with _$SubjectsModel {
  const factory SubjectsModel({
    required final String number,
    required final SubjectModel subject,
    required final String teacher,
  }) = _SubjectsModel;
  factory SubjectsModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectsModelFromJson(json);
}
