import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_state.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar.dart';

import '../../components/controller/schedule_builder_cubit.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
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
                      '/timetable/?groupname=${await context.read<HomePageCubit>().getGroup()}',
                      '/week/',
                    );
                return await context.read<ScheduleBuilderCubit>().getSchedule();
              },
              child: Stack(
                children: [
                  ScrollConfiguration(
                    behavior: const ScrollBehavior(),
                    child: GlowingOverscrollIndicator(
                      axisDirection: AxisDirection.down,
                      color: const Color(0xff464D70),
                      child: ListView(
                        padding: const EdgeInsets.only(top: 120, bottom: 46),
                        children: [
                          ...List.generate(
                            1,
                            (index) => Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 24),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Расписание ",
                                        style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "(${state.scheduleEntiti[index].info.place})",
                                        style: const TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                  state.scheduleEntiti[index].subjects.length,
                                  (i) => Container(
                                    width: size.width,
                                    height: 70,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 8.5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xffEAE9E5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(state.scheduleEntiti[index]
                                              .subjects[i].number),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 5,
                                            child: Column(
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
                                                      .subject,
                                                  style: const TextStyle(
                                                    fontFamily: "Roboto",
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  state.scheduleEntiti[index]
                                                      .subjects[i].teacher,
                                                  style: const TextStyle(
                                                    fontFamily: "Roboto",
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
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
                                Container(
                                    width: size.width,
                                    height: 70,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 8.5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xffEAE9E5),
                                    ),
                                    child: const Text(
                                      'На этот день замен нет',
                                      style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppBarWidget(
                    week: state.weekEntiti.week,
                  ),
                ],
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
