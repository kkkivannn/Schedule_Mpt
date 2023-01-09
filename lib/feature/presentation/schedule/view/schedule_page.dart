import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';

import '../../../../core/helpers/values.dart';
import '../../components/controller/schedule_builder_cubit.dart';
import '../../components/controller/schedule_builder_state.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsNotHaveSchedule) {
          context.read<ScheduleBuilderCubit>().getSchedule();
        } else if (state is IsHaveSchedule) {
          return SafeArea(
            child: RefreshIndicator(
              color: const Color(0xff464D70),
              onRefresh: () async {
                await context.read<HomePageCubit>().fetchSchedule(
                      '/timetable/?number_group=${await context.read<HomePageCubit>().getGroup()}',
                      '/week/',
                    );
                return await context.read<ScheduleBuilderCubit>().getSchedule();
              },
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView(
                  padding: const EdgeInsets.only(top: 46, bottom: 46),
                  children: [
                    ...List.generate(
                      state.scheduleEntiti.length,
                      (index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "${WeekScheduleDay.days[index]} (${state.scheduleEntiti[index].info.place})",
                              style: const TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ...List.generate(
                            state.scheduleEntiti[index].subjects.length,
                            (i) => Container(
                              width: size.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 8.5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffEAE9E5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      state.scheduleEntiti[index].subjects[i]
                                          .number,
                                    ),
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        margin: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 5,
                                          left: 10,
                                        ),
                                        child: state.scheduleEntiti[index]
                                                    .subjects[i].subject.sub !=
                                                ''
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    state
                                                        .scheduleEntiti[index]
                                                        .subjects[i]
                                                        .subject
                                                        .sub,
                                                    style: const TextStyle(
                                                      fontFamily: "Roboto",
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    state
                                                        .scheduleEntiti[index]
                                                        .subjects[i]
                                                        .teacher
                                                        .tech,
                                                    style: const TextStyle(
                                                      fontFamily: "Roboto",
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 10,
                                                      vertical: 10,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: const Color(
                                                          0xffFCEAEA),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          state
                                                                      .scheduleEntiti[
                                                                          index]
                                                                      .subjects[
                                                                          i]
                                                                      .subject
                                                                      .numerator ==
                                                                  ""
                                                              ? "Нет занятий"
                                                              : state
                                                                  .scheduleEntiti[
                                                                      index]
                                                                  .subjects[i]
                                                                  .subject
                                                                  .numerator,
                                                          style:
                                                              const TextStyle(
                                                            fontFamily:
                                                                "Roboto",
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        state
                                                                    .scheduleEntiti[
                                                                        index]
                                                                    .subjects[i]
                                                                    .subject
                                                                    .numerator ==
                                                                ""
                                                            ? Container(
                                                                width: 1,
                                                              )
                                                            : Text(
                                                                state
                                                                    .scheduleEntiti[
                                                                        index]
                                                                    .subjects[i]
                                                                    .teacher
                                                                    .numerator,
                                                                style:
                                                                    const TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 10,
                                                      vertical: 10,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: const Color(
                                                          0xffECF2F9),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          state
                                                                      .scheduleEntiti[
                                                                          index]
                                                                      .subjects[
                                                                          i]
                                                                      .subject
                                                                      .denominator ==
                                                                  ''
                                                              ? "Нет занятий"
                                                              : state
                                                                  .scheduleEntiti[
                                                                      index]
                                                                  .subjects[i]
                                                                  .subject
                                                                  .denominator,
                                                          style:
                                                              const TextStyle(
                                                            fontFamily:
                                                                "Roboto",
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        state
                                                                    .scheduleEntiti[
                                                                        index]
                                                                    .subjects[i]
                                                                    .subject
                                                                    .denominator ==
                                                                ''
                                                            ? Container(
                                                                width: 1,
                                                              )
                                                            : Text(
                                                                state
                                                                    .scheduleEntiti[
                                                                        index]
                                                                    .subjects[i]
                                                                    .teacher
                                                                    .denominator,
                                                                style:
                                                                    const TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        TimeLessons.times[int.parse(state
                                            .scheduleEntiti[index]
                                            .subjects[i]
                                            .number)],
                                        style: const TextStyle(),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      },
    );
  }
}
