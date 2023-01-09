import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';

class ScheduleCardWidget extends StatelessWidget {
  final List<ScheduleEntiti> scheduleEntiti;
  final int weekDay;
  final int index;
  const ScheduleCardWidget(
      {super.key,
      required this.scheduleEntiti,
      required this.weekDay,
      required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
              scheduleEntiti[weekDay].subjects[index].number,
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
                child: scheduleEntiti[weekDay].subjects[index].subject.sub != ''
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            scheduleEntiti[weekDay].subjects[index].subject.sub,
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            scheduleEntiti[weekDay]
                                .subjects[index]
                                .teacher
                                .tech,
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffFCEAEA)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  scheduleEntiti[weekDay]
                                              .subjects[index]
                                              .subject
                                              .numerator ==
                                          ''
                                      ? 'Нет занятий'
                                      : scheduleEntiti[weekDay]
                                          .subjects[index]
                                          .subject
                                          .numerator,
                                  style: const TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                scheduleEntiti[weekDay]
                                            .subjects[index]
                                            .subject
                                            .numerator ==
                                        ''
                                    ? Container(
                                        width: 1,
                                      )
                                    : Text(
                                        scheduleEntiti[weekDay]
                                            .subjects[index]
                                            .teacher
                                            .numerator,
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
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffECF2F9),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  scheduleEntiti[weekDay]
                                              .subjects[index]
                                              .subject
                                              .denominator ==
                                          ''
                                      ? 'Нет занятий'
                                      : scheduleEntiti[weekDay]
                                          .subjects[index]
                                          .subject
                                          .denominator,
                                  style: const TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                scheduleEntiti[weekDay]
                                            .subjects[index]
                                            .subject
                                            .denominator ==
                                        ''
                                    ? Container(
                                        width: 1,
                                      )
                                    : Text(
                                        scheduleEntiti[weekDay]
                                            .subjects[index]
                                            .teacher
                                            .denominator,
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
                        ],
                      ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 4),
              child: Text(
                TimeLessons.times[
                    int.parse(scheduleEntiti[weekDay].subjects[index].number)],
                style: const TextStyle(),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
