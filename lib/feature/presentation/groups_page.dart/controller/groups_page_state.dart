import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/groups_entiti.dart';

abstract class GroupsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class GroupsEmptyState extends GroupsState {
  @override
  List<Object?> get props => [];
}

class GroupsLoadedState extends GroupsState {
  final GroupsEntiti groupsEntiti;

  GroupsLoadedState(this.groupsEntiti);
  @override
  List<Object?> get props => [groupsEntiti];
}

class GroupsErrorState extends GroupsState {
  final String message;

  GroupsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
