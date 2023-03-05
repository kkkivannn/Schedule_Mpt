import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_state.dart';

import '../../../../../../core/helpers/values.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(AppBarEmptyState());

  Future<void> updateValueInAppBar(int value, String next) async {
    try {
      onPageChange(value);
      emit(
        AppBarUpdateValueState(
          weekDay: weekDay,
          weekDayAppBar: weekDayAppBar,
          month: monthAppBar,
          day: dayAppBar,
          next: next,
          week: week,
        ),
      );
    } catch (e) {
      emit(AppBarEmptyState());
    }
  }
}
