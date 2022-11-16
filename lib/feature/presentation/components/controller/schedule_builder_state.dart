part of 'schedule_builder_cubit.dart';

@freezed
class ScheduleBuilderState with _$ScheduleBuilderState{
  factory ScheduleBuilderState.notHaveSchedule() = _ScheduleBuilderNotHaveSchedule;
  factory ScheduleBuilderState.haveSchedule(ScheduleModel scheduleModel) = _ScheduleBuilderHaveSchedule;
  factory ScheduleBuilderState.waiting() = _ScheduleBuilderWaiting;
  factory ScheduleBuilderState.error(dynamic error) = _ScheduleBuilderError;
  factory ScheduleBuilderState.fromJson(Map<String, dynamic> json) => _$ScheduleBuilderStateFromJson(json);
}