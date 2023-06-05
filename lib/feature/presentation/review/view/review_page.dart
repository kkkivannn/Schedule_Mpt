import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_state.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/view/app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants.dart';
import '../../../../core/helpers/values.dart';
import '../../components/controller/schedule_builder_cubit.dart';
import '../widgets/schedule.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  late PageController pageController = PageController(keepPage: true);
  int previosDay = 0;
  Future<void> onPageChangeAppBar({required int value}) async {
    if (previosDay == 0 && value == 1) {
      if (weekDayAppBar == 1 && week == 'Знаменатель') {
        week = 'Числитель';
      } else if (weekDayAppBar == 7 && week == "Числитель") {
        week = 'Знаменатель';
      }
      previosDay = value;
    } else if (previosDay == 1 && value == 2) {
      if (weekDayAppBar == 1 && week == 'Знаменатель') {
        week = 'Числитель';
      } else if (weekDayAppBar == 7 && week == "Числитель") {
        week = 'Знаменатель';
      }
      previosDay = value;
    } else if (value == 1 && previosDay == 2) {
      if (weekDayAppBar == 1 && week == 'Знаменатель') {
        week = 'Числитель';
      } else if (weekDayAppBar == 7 && week == "Числитель") {
        week = 'Знаменатель';
      }
      previosDay = value;
    } else if (value == 0 && previosDay == 1) {
      if (weekDayAppBar == 1 && week == 'Знаменатель') {
        week = 'Числитель';
      } else if (weekDayAppBar == 7 && week == "Числитель") {
        week = 'Знаменатель';
      }
      previosDay = value;
    }
  }

  onPageChangeSchedule({required int value}) {
    for (var i = 0; i <= value; i++) {
      if (value == i) {
        if (value == 0 && week == 'Знаменатель') {
          return 'Числитель';
        } else if (value == 6 && week == "Числитель") {
          return 'Знаменатель';
        } else {
          return week;
        }
      }
    }
  }

  pagesCahnged() async {
    for (var i = weekDay; pages.length < 3; i++) {
      String week = '';
      
      if (i > 6) {
        i = 0;
        week = onPageChangeSchedule(value: i);
        pages.add(
          Schedule(itemPage: i, week: week),
        );
      } else {
        week = onPageChangeSchedule(value: i);
        pages.add(
          Schedule(itemPage: i, week: week),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsNotHaveSchedule) {
          context.read<ScheduleBuilderCubit>().getSchedule();
        } else if (state is IsHaveSchedule) {
          if (week.isEmpty) {
            week = state.weekEntiti.week;
            if (firstLoading) {
              pagesCahnged();
              firstLoading = false;
            }
          }
          return Scaffold(
            backgroundColor: week == "Числитель" &&
                    Theme.of(context).brightness == Brightness.dark
                ? const Color(0xffCB9292)
                : week == "Знаменатель" &&
                        Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xff7398B2)
                    : week == "Числитель" &&
                            Theme.of(context).brightness == Brightness.light
                        ? const Color(0xffFCEAEA)
                        : const Color(0xffECF2F9),
            body: SafeArea(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: Stack(
                    children: [
                      PageView.builder(
                        key: const PageStorageKey<String>('page'),
                        controller: pageController,
                        itemCount: 3,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: (value) {
                          setState(() {
                            index = value;
                            context.read<AppBarCubit>().updateValueInAppBar(
                                value, state.weekEntiti.next);

                            onPageChangeAppBar(
                              value: value,
                            );
                          });
                        },
                        itemBuilder: (context, itemPage) {
                          return Stack(
                            children: [
                              pages[itemPage],
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.grey[900]
                                    : Colors.grey[100],
                          ),
                          margin: const EdgeInsets.only(bottom: 25),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: AnimatedSmoothIndicator(
                            activeIndex: index,
                            count: pages.length,
                            effect: WormEffect(
                              activeDotColor: const Color(0xff464D70),
                              dotColor: Colors.grey[300]!,
                              dotHeight: 10,
                              dotWidth: 10,
                              type: WormType.normal,
                            ),
                          ),
                        ),
                      ),
                      AppBarWidget(
                        week: week,
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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
