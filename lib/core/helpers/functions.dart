import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:schedule_mpt/core/helpers/values.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/view/specialities_page.dart';

class BottomSheets {
  final BuildContext context;

  BottomSheets({required this.context});

  void schowSpecialitiesBottomSheet() {
    showCupertinoModalBottomSheet(
      animationCurve: Curves.easeInOutQuint,
      elevation: 12,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.2),
      duration: const Duration(milliseconds: 600),
      backgroundColor: Colors.white,
      context: context,
      topRadius: const Radius.circular(15),
      builder: (context) {
        return const SpecialitiesPage();
      },
    );
  }

  void schowGroupsBottomSheet(String specialities) {
    showCupertinoModalBottomSheet(
      animationCurve: Curves.easeInOutQuint,
      elevation: 12,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.2),
      duration: const Duration(milliseconds: 600),
      backgroundColor: Colors.white,
      context: context,
      topRadius: const Radius.circular(15),
      builder: (context) {
        return GroupsPage(
          specialities: specialities,
        );
      },
    );
  }
}



Future<void> onPageChange(int value) async {
  if (prevIndex == 0 && value == 1) {
    if (weekDay == 6 || weekDayAppBar == 7) {
      weekDay = 0;
      weekDayAppBar = 1;
      prevIndex = value;
    } else {
      weekDay++;
      weekDayAppBar++;
      prevIndex = value;
    }
    if ((dayAppBar == 30 && monthAppBar % 2 == 0) ||
        (dayAppBar == 31 && monthAppBar % 2 != 0) ||
        (dayAppBar == 28 && monthAppBar == 2)) {
      dayAppBar = 1;
      monthAppBar++;
    } else {
      dayAppBar++;
    }
  } else if (prevIndex == 1 && value == 2) {
    if (weekDay == 6 || weekDayAppBar == 7) {
      weekDay = 0;
      weekDayAppBar = 1;
      prevIndex = value;
    } else {
      weekDay++;
      weekDayAppBar++;
      prevIndex = value;
    }
    if ((dayAppBar == 30 && monthAppBar % 2 == 0) ||
        (dayAppBar == 31 && monthAppBar % 2 != 0) ||
        (dayAppBar == 28 && monthAppBar == 2)) {
      dayAppBar = 1;
      monthAppBar++;
    } else {
      dayAppBar++;
    }
  } else if (prevIndex == 2 && value == 1) {
    if (weekDay == 0 && weekDayAppBar == 1) {
      weekDay = 6;
      weekDayAppBar = 7;
      prevIndex = value;
    } else {
      weekDay--;
      weekDayAppBar--;
      prevIndex = value;
    }
    if (dayAppBar == 1) {
      monthAppBar--;
      prevIndex = value;
    }
    if (dayAppBar == 1) {
      if (monthAppBar == 2) {
        dayAppBar = 28;
      } else if (monthAppBar % 2 != 0) {
        dayAppBar = 31;
      } else {
        dayAppBar = 30;
      }
      prevIndex = value;
    } else {
      dayAppBar--;
      prevIndex = value;
    }
  } else if (prevIndex == 1 && value == 0) {
    if (weekDay == 0 && weekDayAppBar == 1) {
      weekDay = 6;
      weekDayAppBar = 7;
      prevIndex = value;
    } else {
      weekDay--;
      weekDayAppBar--;
      prevIndex = value;
    }
    if (dayAppBar == 1) {
      monthAppBar--;
      prevIndex = value;
    }
    if (dayAppBar == 1) {
      if (monthAppBar == 2) {
        dayAppBar = 28;
      } else if (monthAppBar % 2 != 0) {
        dayAppBar = 31;
      } else {
        dayAppBar = 30;
      }
      prevIndex = value;
    } else {
      dayAppBar--;
      prevIndex = value;
    }
  }
}
