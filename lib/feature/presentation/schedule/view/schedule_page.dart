import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import '../../../../constants_images/theme.dart';
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
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white,
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
                              child: CustomText(
                                title: state.scheduleEntiti[index].info.place ==
                                        'Место не найдено'
                                    ? WeekScheduleDay.days[index]
                                    : "${state.scheduleEntiti[index].info.day} (${state.scheduleEntiti[index].info.place})",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
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
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? const Color(0xff282720)
                                      : const Color(0xffEAE9E5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        title: state.scheduleEntiti[index]
                                            .subjects[i].number,
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15,
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
                                                    CustomText(
                                                      title: state
                                                          .scheduleEntiti[index]
                                                          .subjects[i]
                                                          .subject
                                                          .sub,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      color: Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? Colors.white
                                                          : Colors.black,
                                                    ),
                                                    CustomText(
                                                      title: state
                                                          .scheduleEntiti[index]
                                                          .subjects[i]
                                                          .teacher
                                                          .tech,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.grey,
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
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? const Color(
                                                                0xffCB9292)
                                                            : const Color(
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
                                                          CustomText(
                                                            title: state
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
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Colors.white
                                                                : Colors.black,
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
                                                              : CustomText(
                                                                  title: state
                                                                      .scheduleEntiti[
                                                                          index]
                                                                      .subjects[i]
                                                                      .teacher
                                                                      .numerator,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Theme.of(context)
                                                                              .brightness ==
                                                                          Brightness
                                                                              .dark
                                                                      ? Colors.grey[
                                                                          300]
                                                                      : Colors
                                                                          .grey,
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
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? const Color(
                                                                0xff7398B2)
                                                            : const Color(
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
                                                          CustomText(
                                                            title: state
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
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Colors.white
                                                                : Colors.black,
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
                                                              : CustomText(
                                                                  title: state
                                                                      .scheduleEntiti[
                                                                          index]
                                                                      .subjects[i]
                                                                      .teacher
                                                                      .denominator,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Theme.of(context)
                                                                              .brightness ==
                                                                          Brightness
                                                                              .dark
                                                                      ? Colors.grey[
                                                                          300]
                                                                      : Colors
                                                                          .grey,
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
                                        child: CustomText(
                                          title: TimeLessons.times[int.parse(state
                                              .scheduleEntiti[index]
                                              .subjects[i]
                                              .number)],
                                          textAlign: TextAlign.right,
                                          fontSize: 15,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black,
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
