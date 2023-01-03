import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/view/hello_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/view/home_page.dart';

import 'controller/schedule_builder_state.dart';

class ScheduleBuilder extends StatelessWidget {
  const ScheduleBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsHaveSchedule) {
          return const HomePage();
        } else if (state is IsNotHaveSchedule) {
          return const HelloPage();
        } else {
          context.read<ScheduleBuilderCubit>().getSchedule();
        }
        return const HelloPage();
      },
    );
  }

  // void _showSnackBar(BuildContext context, dynamic error) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       duration: const Duration(seconds: 5),
  //       content: SingleChildScrollView(
  //           child: Text(
  //         error.toString(),
  //         maxLines: 5,
  //       )),
  //     ),
  //   );
  // }
}
