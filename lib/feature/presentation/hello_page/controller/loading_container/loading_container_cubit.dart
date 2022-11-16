import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_state.dart';

class LoadingContainerCubit extends Cubit<LoadingContainerState> {
  final GetSchedule getSchedule;

  LoadingContainerCubit({required this.getSchedule})
      : super(LoadingContainerEmptyState());
  Future<void> fetchSchedule(String endpoint) async {
    try {
      final loadedScheduleOrFailure =
          await getSchedule.call(EndpointParams(endpoint: endpoint));
      loadedScheduleOrFailure.fold(
        (error) =>
            emit(LoadingContainerErrorState(message: SERVER_FAILURE_MESSAGE)),
        (loadedSchedule) => emit(
          LoadingContainerLoadedState(loadedSchedule),
        ),
      );
    } catch (_) {
      emit(LoadingContainerErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
