import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_state.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/view/app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/helpers/values.dart';
import '../../components/controller/schedule_builder_cubit.dart';
import '../widgets/schedule.dart';

class KeepAlivePage extends StatefulWidget {
  const KeepAlivePage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<KeepAlivePage> createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    /// Dont't forget this
    super.build(context);

    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  late PageController pageController;
  List<Widget> pages = [];
  void pagesCahnged() {
    for (var i = weekDay; pages.length < 3; i++) {
      if (i > 6) {
        i = 0;
        pages.add(
          Schedule(
            itemPage: i,
          ),
        );
      } else {
        pages.add(
          Schedule(
            itemPage: i,
          ),
        );
      }
    }
  }

  @override
  void initState() {
    pageController = PageController(keepPage: true);
    pagesCahnged();
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
          return SafeArea(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    itemCount: 3,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (value) async {
                      setState(() {
                        context.read<AppBarCubit>().updateValueInAppBar(value);
                        print("день недели: $weekDayAppBar");
                        print("день: $dayAppBar");
                        print("месяц: $monthAppBar");
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey[900]
                            : Colors.grey[100],
                      ),
                      margin: const EdgeInsets.only(bottom: 25),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
