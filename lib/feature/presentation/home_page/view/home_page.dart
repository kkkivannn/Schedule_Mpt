import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/review/view/review_page.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/view/app_bar.dart';
import 'package:schedule_mpt/feature/presentation/schedule/view/schedule_page.dart';
import 'package:schedule_mpt/feature/presentation/settings/view/settings_page.dart';

import '../../../../core/helpers/values.dart';
import '../../components/controller/schedule_builder_cubit.dart';
import '../../components/controller/schedule_builder_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    ReviewPage(),
    SchedulePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsHaveSchedule) {
          return Scaffold(
            // appBar: AppBar(
            //   toolbarHeight: 110,
            //   elevation: 0,
            //   backgroundColor: state.weekEntiti.week == 'Числитель'
            //       ? const Color(0xffFCEAEA)
            //       : const Color(0xffECF2F9),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(
            //       bottom: Radius.elliptical(size.width, 80),
            //     ),
            //   ),
            // ),
            // appBar: _selectedIndex == 0
            //     ? PreferredSize(
            //         preferredSize: Size(MediaQuery.of(context).size.width, 107),
            //         child: SafeArea(
            //           child: AppBarWidget(
            //             week: state.weekEntiti.week,
            //           ),
            //         ),
            //       )
            //     : PreferredSize(
            //         preferredSize: const Size(0, 0),
            //         child: Container(),
            //       ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
              selectedItemColor: const Color(0xff464D70),
              selectedIconTheme: const IconThemeData(
                color: Color(0xff464D70),
              ),
              unselectedItemColor: const Color(0xffC1C1C1),
              unselectedIconTheme:
                  const IconThemeData(color: Color(0xffC1C1C1)),
              unselectedFontSize: 10,
              selectedFontSize: 10,
              selectedLabelStyle: const TextStyle(
                fontFamily: "Roboto",
                fontSize: 10,
                color: Color(0xff464D70),
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: "Roboto",
                fontSize: 10,
                color: Color(0xffC1C1C1),
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: SvgPicture.asset(
                      SvgImg.review,
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 0
                          ? const Color(0xff464D70)
                          : const Color(0xffC1C1C1),
                    ),
                  ),
                  label: 'Обзор',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: SvgPicture.asset(
                      SvgImg.schedule,
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 1
                          ? const Color(0xff464D70)
                          : const Color(0xffC1C1C1),
                    ),
                  ),
                  label: 'Расписание',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: SvgPicture.asset(
                      SvgImg.settings,
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 2
                          ? const Color(0xff464D70)
                          : const Color(0xffC1C1C1),
                    ),
                  ),
                  label: 'Настройки',
                ),
              ],
            ),
            body: _pages.elementAt(_selectedIndex),
          );
        }
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      },
    );
  }
}
