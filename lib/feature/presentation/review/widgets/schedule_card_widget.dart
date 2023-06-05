import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';

import 'app_bar/controller/app_bar_cubit.dart';
import 'app_bar/controller/app_bar_state.dart';

class ScheduleCardWidget extends StatelessWidget {
  final List<ScheduleEntiti> scheduleEntiti;
  final int weekDay;
  final int index;
  final String week;
  const ScheduleCardWidget({
    super.key,
    required this.scheduleEntiti,
    required this.weekDay,
    required this.index,
    required this.week,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AppBarCubit, AppBarState>(
      builder: (context, state) {
        if (state is AppBarUpdateValueState) {
          return Container(
            width: size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).brightness == Brightness.dark
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
                    title: scheduleEntiti[weekDay].subjects[index].number,
                    color: Theme.of(context).brightness == Brightness.dark
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
                      child: scheduleEntiti[weekDay]
                                  .subjects[index]
                                  .subject
                                  .sub !=
                              ''
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: scheduleEntiti[weekDay]
                                      .subjects[index]
                                      .subject
                                      .sub,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                CustomText(
                                  title: scheduleEntiti[weekDay]
                                      .subjects[index]
                                      .teacher
                                      .tech,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                scheduleEntiti[weekDay]
                                                .subjects[index]
                                                .subject
                                                .sub ==
                                            '' &&
                                        week == "Числитель"
                                    ? Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? const Color(0xffCB9292)
                                                    : const Color(0xffFCEAEA)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              title: scheduleEntiti[weekDay]
                                                          .subjects[index]
                                                          .subject
                                                          .numerator ==
                                                      ''
                                                  ? 'Нет занятий'
                                                  : scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .subject
                                                      .numerator,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            scheduleEntiti[weekDay]
                                                        .subjects[index]
                                                        .subject
                                                        .numerator ==
                                                    ''
                                                ? Container(
                                                    width: 1,
                                                  )
                                                : CustomText(
                                                    title:
                                                        scheduleEntiti[weekDay]
                                                            .subjects[index]
                                                            .teacher
                                                            .numerator,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.grey[300]
                                                        : Colors.grey,
                                                  ),
                                          ],
                                        ),
                                      )
                                    : Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? const Color(0xff7398B2)
                                              : const Color(0xffECF2F9),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              title: scheduleEntiti[weekDay]
                                                          .subjects[index]
                                                          .subject
                                                          .denominator ==
                                                      ''
                                                  ? 'Нет занятий'
                                                  : scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .subject
                                                      .denominator,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            scheduleEntiti[weekDay]
                                                        .subjects[index]
                                                        .subject
                                                        .denominator ==
                                                    ''
                                                ? Container(
                                                    width: 1,
                                                  )
                                                : CustomText(
                                                    title:
                                                        scheduleEntiti[weekDay]
                                                            .subjects[index]
                                                            .teacher
                                                            .denominator,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.grey[300]
                                                        : Colors.grey,
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
                      TimeLessons.times[int.parse(
                          scheduleEntiti[weekDay].subjects[index].number)],
                      style: const TextStyle(),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Container(
          width: size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8.5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).brightness == Brightness.dark
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
                  title: scheduleEntiti[weekDay].subjects[index].number,
                  color: Theme.of(context).brightness == Brightness.dark
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
                    child: scheduleEntiti[weekDay]
                                .subjects[index]
                                .subject
                                .sub !=
                            ''
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: scheduleEntiti[weekDay]
                                    .subjects[index]
                                    .subject
                                    .sub,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              CustomText(
                                title: scheduleEntiti[weekDay]
                                    .subjects[index]
                                    .teacher
                                    .tech,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              scheduleEntiti[weekDay]
                                              .subjects[index]
                                              .subject
                                              .sub ==
                                          '' &&
                                      week == "Числитель"
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? const Color(0xffCB9292)
                                              : const Color(0xffFCEAEA)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            title: scheduleEntiti[weekDay]
                                                        .subjects[index]
                                                        .subject
                                                        .numerator ==
                                                    ''
                                                ? 'Нет занятий'
                                                : scheduleEntiti[weekDay]
                                                    .subjects[index]
                                                    .subject
                                                    .numerator,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : Colors.black,
                                          ),
                                          scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .subject
                                                      .numerator ==
                                                  ''
                                              ? Container(
                                                  width: 1,
                                                )
                                              : CustomText(
                                                  title: scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .teacher
                                                      .numerator,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.grey[300]
                                                      : Colors.grey,
                                                ),
                                        ],
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? const Color(0xff7398B2)
                                            : const Color(0xffECF2F9),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            title: scheduleEntiti[weekDay]
                                                        .subjects[index]
                                                        .subject
                                                        .denominator ==
                                                    ''
                                                ? 'Нет занятий'
                                                : scheduleEntiti[weekDay]
                                                    .subjects[index]
                                                    .subject
                                                    .denominator,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : Colors.black,
                                          ),
                                          scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .subject
                                                      .denominator ==
                                                  ''
                                              ? Container(
                                                  width: 1,
                                                )
                                              : CustomText(
                                                  title: scheduleEntiti[weekDay]
                                                      .subjects[index]
                                                      .teacher
                                                      .denominator,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.grey[300]
                                                      : Colors.grey,
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
                    TimeLessons.times[int.parse(
                        scheduleEntiti[weekDay].subjects[index].number)],
                    style: const TextStyle(),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
