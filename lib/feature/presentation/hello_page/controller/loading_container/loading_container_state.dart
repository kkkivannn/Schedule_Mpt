import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

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

  LoadingContainerLoadedState(this.scheduleEntiti);
  @override
  List<Object?> get props => [scheduleEntiti];
}

class LoadingContainerErrorState extends LoadingContainerState {
  final String message;

  LoadingContainerErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
