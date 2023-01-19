import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_state.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/not_have_replacement_widget.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/not_have_schedule_widget.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/schedule_card_widget.dart';

class Schedule extends StatefulWidget {
  final List<ScheduleEntiti> scheduleEntiti;
  final int weekDay;
  const Schedule(
      {super.key, required this.scheduleEntiti, required this.weekDay});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            displacement: 120,
            color: const Color(0xff464D70),
            onRefresh: () async {
              await context.read<HomePageCubit>().fetchSchedule(
                    '/timetable/?number_group=${await context.read<HomePageCubit>().getGroup()}',
                    '/week/',
                  );
              return context.read<ScheduleBuilderCubit>().getSchedule();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ListView(
                // physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 46, top: 40),
                children: List.generate(
                  1,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 24,
                        ),
                        child: Row(
                          children: [
                            CustomText(
                              title: "Расписание ",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            widget.scheduleEntiti.length > 5 &&
                                    widget.weekDay == 5
                                ? CustomText(
                                    title:
                                        "(${widget.scheduleEntiti[widget.weekDay].info.place})",
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  )
                                : widget.scheduleEntiti.length == 5 &&
                                        widget.weekDay == 5
                                    ? Container()
                                    : widget.weekDay == 6
                                        ? Container()
                                        : CustomText(
                                            title: widget
                                                        .scheduleEntiti[
                                                            widget.weekDay]
                                                        .info
                                                        .place ==
                                                    'Место не найдено'
                                                ? ''
                                                : "(${widget.scheduleEntiti[widget.weekDay].info.place})",
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                          ),
                          ],
                        ),
                      ),
                      ...List.generate(
                        widget.scheduleEntiti.length > 5 && widget.weekDay == 5
                            ? widget
                                .scheduleEntiti[widget.weekDay].subjects.length
                            : widget.scheduleEntiti.length == 5 &&
                                    widget.weekDay == 5
                                ? 1
                                : widget.weekDay == 6
                                    ? 1
                                    : widget.scheduleEntiti[widget.weekDay]
                                        .subjects.length,
                        (i) => widget.scheduleEntiti.length > 5 &&
                                widget.weekDay == 5
                            ? ScheduleCardWidget(
                                scheduleEntiti: widget.scheduleEntiti,
                                weekDay: widget.weekDay,
                                index: i,
                              )
                            : widget.scheduleEntiti.length == 5 &&
                                    widget.weekDay == 5
                                ? const NotHaveScheduleWidget()
                                : widget.weekDay == 6
                                    ? const NotHaveScheduleWidget()
                                    : ScheduleCardWidget(
                                        scheduleEntiti: widget.scheduleEntiti,
                                        weekDay: widget.weekDay,
                                        index: i,
                                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 24),
                        child: Row(
                          children: const [
                            Text(
                              "Замены",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const NotHaveReplacementWidget()
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
