import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/custom/custom_button.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_state.dart';

import '../../home_page/controller/home_page_cubit.dart';

class HelloPage extends StatefulWidget {
  final String? group;
  final String? week;
  const HelloPage({
    super.key,
    this.group,
    this.week,
  });

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: SvgPicture.asset(
                    SvgImg.hat,
                    color: const Color(0xff464D70),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 10),
                  child: CustomText(
                    title: 'Привет, студент МПТ',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                CustomText(
                  title:
                      'Для загрузки расписания выбери\nспециальность и группу',
                  fontSize: 16,
                  color: Colors.black,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: CustomButton(
                    color: const Color(0xff464D70),
                    text: "Продолжить",
                    textColor: Colors.white,
                    onTap: () => BottomSheets(context: context)
                        .schowSpecialitiesBottomSheet(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
