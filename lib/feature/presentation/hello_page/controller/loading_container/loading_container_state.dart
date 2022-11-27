import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';

abstract class LoadingContainerState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingContainerEmptyState extends LoadingContainerState{
  @override

  List<Object?> get props => [];
}

class LoadingContainerLoadedState extends LoadingContainerState {
  final List<ScheduleEntiti> scheduleEntiti;
  final WeekEntiti weekEntiti;

  LoadingContainerLoadedState({required this.scheduleEntiti, required this.weekEntiti});
  @override
  List<Object?> get props => [scheduleEntiti, weekEntiti];
}

class LoadingContainerErrorState extends LoadingContainerState {
  final String message;

  LoadingContainerErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
