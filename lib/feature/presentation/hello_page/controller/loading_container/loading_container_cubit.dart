import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_state.dart';

class LoadingContainerCubit extends Cubit<LoadingContainerState> {
  final GetSchedule getSchedule;
  final GetWeek getWeek;

  LoadingContainerCubit({required this.getWeek, required this.getSchedule})
      : super(LoadingContainerEmptyState());
  Future<void> fetchSchedule(String endpointSchedule, String endpointWeek) async {
    WeekEntiti? weekEntiti;
    try {
      final loadedScheduleOrFailure =
          await getSchedule.call(EndpointParams(endpoint: endpointSchedule));
      final week = await getWeek.call(EndpointParams(endpoint: endpointWeek));

      week.fold(
          (error) =>
              emit(LoadingContainerErrorState(message: SERVER_FAILURE_MESSAGE)),
          (week) => weekEntiti = week);
      loadedScheduleOrFailure.fold(
        (error) =>
            emit(LoadingContainerErrorState(message: SERVER_FAILURE_MESSAGE)),
        (loadedSchedule) => emit(
          LoadingContainerLoadedState(
              scheduleEntiti: loadedSchedule, weekEntiti: weekEntiti!),
        ),
      );
    } catch (_) {
      emit(LoadingContainerErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
