import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/feature/data/datasource/local_datasource/schedule_local_datasource.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final GetSchedule getSchedule;
  final GetWeek getWeek;
  final ScheduleLocalDatasource scheduleLocalDatasource;

  HomePageCubit({
    required this.getWeek,
    required this.getSchedule,
    required this.scheduleLocalDatasource,
  }) : super(HomePageEmptyState());
  Future<void> fetchSchedule(
      String endpointSchedule, String endpointWeek) async {
    WeekEntiti? weekEntiti;
    List<ScheduleEntiti>? loadedSchedule;
    try {
      emit(HomePageEmptyState());
      final loadedScheduleOrFailure =
          await getSchedule.call(EndpointParams(endpoint: endpointSchedule));
      final week = await getWeek.call(EndpointParams(endpoint: endpointWeek));

      week.fold(
          (error) => emit(HomePageErrorState(message: SERVER_FAILURE_MESSAGE)),
          (week) => weekEntiti = week);
      loadedScheduleOrFailure.fold(
        (error) => emit(HomePageErrorState(message: SERVER_FAILURE_MESSAGE)),
        (schedule) => loadedSchedule = schedule,
      );
      emit(
        HomePageLoadedState(
            weekEntiti: weekEntiti, scheduleEntiti: loadedSchedule),
      );
    } catch (_) {
      emit(HomePageErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }

  Future<void> saveGroup(String group) async {
    try {
      await scheduleLocalDatasource.saveGroup(group);
    } catch (e) {
      print(e);
    }
  }

  Future<String> getGroup() async {
    return await scheduleLocalDatasource.getGroup();

  }


   Future<void> saveSpecialities(String specialities) async {
    try {
      await scheduleLocalDatasource.saveSpecialities(specialities);
    } catch (e) {
      print(e);
    }
  }

  Future<String> getSpecialities() async {
    return await scheduleLocalDatasource.getSpecialities();
  }
}
