import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';

class ScheduleBuilder extends StatelessWidget {
  final WidgetBuilder isNotHaveSchedule;
  final WidgetBuilder isWaiting;
  final ValueWidgetBuilder isHaveSchedule;
  const ScheduleBuilder({
    Key? key,
    required this.isNotHaveSchedule,
    required this.isWaiting,
    required this.isHaveSchedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        return state.when(
          notHaveSchedule: () => isNotHaveSchedule(context),
          haveSchedule: (scheduleEntiti) =>
              isHaveSchedule(context, scheduleEntiti, this),
          waiting: () => isWaiting(context),
          error: (erroe) => isNotHaveSchedule(context),
        );
      },
      listenWhen: ((previous, current) =>
          previous.mapOrNull(
            error: (value) => value,
          ) !=
          current.mapOrNull(
            error: (value) => value,
          )),
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => _showSnackBar(context, error),
        );
      },
    );
  }

  void _showSnackBar(BuildContext context, dynamic error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
            child: Text(
          error.toString(),
          maxLines: 5,
        )),
      ),
    );
  }
}
