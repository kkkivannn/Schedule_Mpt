import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/core/helpers/values.dart';
import 'package:schedule_mpt/feature/presentation/review/view/review_page.dart';
import 'package:schedule_mpt/feature/presentation/schedule/view/schedule_page.dart';
import 'package:schedule_mpt/feature/presentation/settings/view/settings_page.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ScheduleBuilderCubit, ScheduleBuilderState>(
      builder: (context, state) {
        if (state is IsHaveSchedule) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white,
              selectedItemColor: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xffB9BEE3)
                  : const Color(0xff464D70),
              selectedIconTheme: IconThemeData(
                color: Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xffB9BEE3)
                    : const Color(0xff464D70),
              ),
              unselectedItemColor: const Color(0xffC1C1C1),
              unselectedIconTheme:
                  const IconThemeData(color: Color(0xffC1C1C1)),
              unselectedFontSize: 10,
              selectedFontSize: 10,
              selectedLabelStyle: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 10,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? const Color(0xffB9BEE3)
                      : const Color(0xff464D70)),
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
                          ? Theme.of(context).brightness == Brightness.dark
                              ? const Color(0xffB9BEE3)
                              : const Color(0xff464D70)
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
                          ? Theme.of(context).brightness == Brightness.dark
                              ? const Color(0xffB9BEE3)
                              : const Color(0xff464D70)
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
                          ? Theme.of(context).brightness == Brightness.dark
                              ? const Color(0xffB9BEE3)
                              : const Color(0xff464D70)
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
