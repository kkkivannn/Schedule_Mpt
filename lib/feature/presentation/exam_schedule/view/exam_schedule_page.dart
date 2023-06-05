import 'package:flutter/material.dart';

import '../../../../constants_images/theme.dart';
import '../../groups_page.dart/view/groups_page.dart';

class ExamSchedulePage extends StatelessWidget {
  const ExamSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 15, bottom: 27),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomText(
                      fontSize: 20,
                      title: 'Расписание экзаменов',
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomText(
                  fontSize: 20,
                  title: 'Расписания экзаменов пока что нет',
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  textAlign: TextAlign.center,    
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
