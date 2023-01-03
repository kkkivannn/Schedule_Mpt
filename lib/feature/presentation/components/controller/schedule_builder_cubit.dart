import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:schedule_mpt/feature/data/datasource/local_datasource/schedule_local_datasource.dart';

import 'schedule_builder_state.dart';

class ScheduleBuilderCubit extends Cubit<ScheduleBuilderState> {
  final ScheduleLocalDatasource scheduleLocalDatasource;
  ScheduleBuilderCubit({required this.scheduleLocalDatasource})
      : super(IsEmptySchedule());

  Future<void> getSchedule() async {
    try {
      emit(IsEmptySchedule());
      final isHaveSchedule = await scheduleLocalDatasource.getSchedule();
      final scheduleEntiti = await scheduleLocalDatasource.getSavesSchedule();
      final isHaveWeek = await scheduleLocalDatasource.isHaveWeek();
      final weekEntiti = await scheduleLocalDatasource.getWeek();
      if (isHaveSchedule && isHaveWeek) {
        emit(
          IsHaveSchedule(
              scheduleEntiti: scheduleEntiti, weekEntiti: weekEntiti),
        );
      }
    } catch (e) {
      emit(IsNotHaveSchedule());
    }
  }
  Future<bool> toNextPage()async{
    final isHaveSchedule = await scheduleLocalDatasource.getSchedule();
    final isHaveWeek = await scheduleLocalDatasource.isHaveWeek();
    if (isHaveSchedule && isHaveWeek) {
      return true;
    }else{
      return false;
    }
  }
}
