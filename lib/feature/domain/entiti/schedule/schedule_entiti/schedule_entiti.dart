import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/info/info_entiti.dart';
import '../subjects/subjects_entiti.dart';
part 'schedule_entiti.freezed.dart';
part 'schedule_entiti.g.dart';

@freezed
class ScheduleEntiti with _$ScheduleEntiti {
  const factory ScheduleEntiti({
    required final InfoEntiti info,
    required final List<SubjectsEntiti> subjects,
  }) = _ScheduleEntiti;
  factory ScheduleEntiti.fromJson(Map<String, dynamic> json) => _$ScheduleEntitiFromJson(json);
}
