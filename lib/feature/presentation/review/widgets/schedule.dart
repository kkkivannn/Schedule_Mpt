import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/not_have_replacement_widget.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/not_have_schedule_widget.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/schedule_card_widget.dart';
import '../../components/controller/schedule_builder_state.dart';

class Schedule extends StatefulWidget {
  final int? itemPage;
  final String week;
  const Schedule({
    this.itemPage,
    required this.week,
    super.key,
  });

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsHaveSchedule) {
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
                              state.scheduleEntiti.length > 5 &&
                                      widget.itemPage! == 5
                                  ? CustomText(
                                      title:
                                          "(${state.scheduleEntiti[widget.itemPage!].info.place})",
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    )
                                  : state.scheduleEntiti.length == 5 &&
                                          widget.itemPage! == 5
                                      ? Container()
                                      : widget.itemPage! == 6
                                          ? Container()
                                          : CustomText(
                                              title: state
                                                          .scheduleEntiti[
                                                              widget.itemPage!]
                                                          .info
                                                          .place ==
                                                      'Место не найдено'
                                                  ? ''
                                                  : "(${state.scheduleEntiti[widget.itemPage!].info.place})",
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                            ),
                            ],
                          ),
                        ),
                        ...List.generate(
                          state.scheduleEntiti.length > 5 &&
                                  widget.itemPage! == 5
                              ? state.scheduleEntiti[widget.itemPage!].subjects
                                  .length
                              : state.scheduleEntiti.length == 5 &&
                                      widget.itemPage! == 5
                                  ? 1
                                  : widget.itemPage! == 6
                                      ? 1
                                      : state.scheduleEntiti[widget.itemPage!]
                                          .subjects.length,
                          (i) => state.scheduleEntiti.length > 5 &&
                                  widget.itemPage! == 5
                              ? ScheduleCardWidget(
                                  scheduleEntiti: state.scheduleEntiti,
                                  weekDay: widget.itemPage!,
                                  index: i,
                                  week: widget.week,
                                )
                              : state.scheduleEntiti.length == 5 &&
                                      widget.itemPage! == 5
                                  ? const NotHaveScheduleWidget()
                                  : widget.itemPage! == 6
                                      ? const NotHaveScheduleWidget()
                                      : ScheduleCardWidget(
                                          scheduleEntiti: state.scheduleEntiti,
                                          weekDay: widget.itemPage!,
                                          index: i,
                                          week: widget.week,
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
        }
        return Container();
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
