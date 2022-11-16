import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subject_entiti.dart';
part 'subject_model.freezed.dart';
part 'subject_model.g.dart';
@freezed
class SubjectModel with _$SubjectModel{
  const factory SubjectModel({
    required final String subject,
    required final String week,
  }) = _SubjectModel;
  factory SubjectModel.fromJson(Map<String, dynamic> json) => _$SubjectModelFromJson(json);
}
