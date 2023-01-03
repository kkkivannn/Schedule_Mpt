import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
        return GroupsPage(specialities: specialities,);
      },
    );
  }
}
