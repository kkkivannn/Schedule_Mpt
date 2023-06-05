import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/specialities/specialities_entiti.dart';

abstract class SpecialitiesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SpecialitiesEmptyState extends SpecialitiesState {
  @override
  List<Object?> get props => [];
}

class SpecialitiesLoadedState extends SpecialitiesState {
  final SpecialitiesEntiti specialitiesEntiti;

  SpecialitiesLoadedState(this.specialitiesEntiti);
  @override
  List<Object?> get props => [specialitiesEntiti];
}

class SpecialitiesErrorState extends SpecialitiesState {
  final String message;

  SpecialitiesErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
