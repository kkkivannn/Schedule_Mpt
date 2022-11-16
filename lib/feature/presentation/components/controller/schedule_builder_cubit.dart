import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:schedule_mpt/feature/data/models/schedule/schedule_model.dart';
import 'package:schedule_mpt/feature/data/repository/schedule_implement.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';
part 'schedule_builder_state.dart';
part 'schedule_builder_cubit.freezed.dart';
part 'schedule_builder_cubit.g.dart';

class ScheduleBuilderCubit extends HydratedCubit<ScheduleBuilderState> {
  ScheduleBuilderCubit() : super(ScheduleBuilderState.notHaveSchedule());
  // final ScheduleRepositoryImplement scheduleRepositoryImplement;
  // Future<void> saveSchedule(ScheduleEntiti scheduleEntiti) async {
  //   emit(ScheduleBuilderState.waiting());
  //   try {
  //     final ScheduleEntiti scheduleEntiti = await scheduleRepositoryImplement.getSchedule(endpoint);
  //     emit(ScheduleBuilderState.haveSchedule(scheduleEntiti));
  //   } catch (e) {

  //   }
  // }

  @override
  ScheduleBuilderState? fromJson(Map<String, dynamic> json) {
    final state = ScheduleBuilderState.fromJson(json);
    return state.whenOrNull(
      haveSchedule: (scheduleModel) =>
          ScheduleBuilderState.haveSchedule(scheduleModel),
    );
  }

  @override
  Map<String, dynamic>? toJson(ScheduleBuilderState state) {
    return state.toJson();
  }
}
