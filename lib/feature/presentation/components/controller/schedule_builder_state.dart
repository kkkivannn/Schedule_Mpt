import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';

class ScheduleBuilderState extends Equatable {
  @override
  List<Object?> get props => [];
}

class IsHaveSchedule extends ScheduleBuilderState {
  final List<ScheduleEntiti> scheduleEntiti;
  final WeekEntiti weekEntiti;

  IsHaveSchedule({required this.weekEntiti, required this.scheduleEntiti});
  @override
  List<Object?> get props => [scheduleEntiti, weekEntiti];
}

class IsNotHaveSchedule extends ScheduleBuilderState {
  @override
  List<Object?> get props => [];
}

class IsEmptySchedule extends ScheduleBuilderState {
  @override
  List<Object?> get props => [];
}

class ErrorSchedule extends ScheduleBuilderState {
  final String message;

  ErrorSchedule({required this.message});
  @override
  List<Object?> get props => [message];
}
