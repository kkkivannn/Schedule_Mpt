import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/review/view/review_page.dart';
import 'package:schedule_mpt/feature/presentation/schedule/view/schedule_page.dart';
import 'package:schedule_mpt/feature/presentation/settings/view/settings_page.dart';

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
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff464D70),
        selectedIconTheme: const IconThemeData(
          color: Color(0xff464D70),
        ),
        unselectedItemColor: const Color(0xffC1C1C1),
        unselectedIconTheme: const IconThemeData(color: Color(0xffC1C1C1)),
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
}
