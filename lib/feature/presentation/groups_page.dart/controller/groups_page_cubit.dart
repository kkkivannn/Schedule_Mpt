import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupsCubit extends Cubit<GroupsState> {
  final GetGroups getGroups;

  GroupsCubit({required this.getGroups})
      : super(GroupsEmptyState());

  Future<void> fetchGroups(String endpoint) async {
    try {
      emit(GroupsEmptyState());
      final loadedGroupsOrFailure =
          await getGroups.call(EndpointParams(endpoint: endpoint));
      loadedGroupsOrFailure.fold(
        (error) =>
            emit(GroupsErrorState(message: SERVER_FAILURE_MESSAGE)),
        (loadedData) => emit(GroupsLoadedState(loadedData)),
      );
    } catch (_) {
      emit(
        GroupsErrorState(message: SERVER_FAILURE_MESSAGE),
      );
    }
  }
}