import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomePageEmptyState extends HomePageState{
  @override

  List<Object?> get props => [];
}

class HomePageLoadedState extends HomePageState {
  final List<ScheduleEntiti>? scheduleEntiti;
  final WeekEntiti? weekEntiti;

  HomePageLoadedState({ this.scheduleEntiti,  this.weekEntiti});
  @override
  List<Object?> get props => [scheduleEntiti, weekEntiti];
}

class HomePageErrorState extends HomePageState {
  final String message;

  HomePageErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}