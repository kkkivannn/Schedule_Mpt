import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/data/models/schedule/info_model.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

import 'subjects_model.dart';
part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';
@freezed
class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    required final InfoModel info,
    required final List<SubjectsModel> subjects,
  }) = _ScheduleModel;
  factory ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);
}
