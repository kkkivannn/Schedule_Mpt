import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/core/helpers/themes/provider/theme_provider.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_state.dart';
import 'package:schedule_mpt/feature/presentation/settings/widgets/group_specialities.dart';
import 'package:schedule_mpt/feature/presentation/settings/widgets/theme_card.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final stream = StreamController<int>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<UserThemeProvider>(context);
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return StreamBuilder<int>(
            initialData: 0,
            stream: stream.stream,
            builder: (context, snapshot) {
              themeState.themeMode == ThemeMode.dark
                  ? stream.sink.add(1)
                  : themeState.themeMode == ThemeMode.light
                      ? stream.sink.add(0)
                      : stream.sink.add(2);
              return SafeArea(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 37, left: 23, bottom: 27),
                        child: CustomText(
                          title: 'Настройки',
                          fontSize: 20,
                          color:
                              Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                      SettingCardWidget(
                        title: "Специальность",
                        onTap: () => BottomSheets(context: context)
                            .schowSpecialitiesBottomSheet(),
                      ),
                      SettingCardWidget(
                        title: "Группа",
                        onTap: () async => BottomSheets(context: context)
                            .schowGroupsBottomSheet(await context
                                .read<HomePageCubit>()
                                .getSpecialities()),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 40, left: 23, bottom: 5),
                        child: CustomText(
                          title: 'Общая инфомация',
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SettingCardWidget(
                        title: 'Расписание звонков',
                        onTap: () {
                          Navigator.pushNamed(context, '/CallSchedule');
                        },
                      ),
                      SettingCardWidget(
                        title: 'Расписание экзаменов',
                        onTap: () {
                          Navigator.pushNamed(context, '/ExamSchedulePage');
                        },
                      ),
                      SettingCardWidget(
                        title: 'Заказать справку ',
                        onTap: () async {
                          if (!await launchUrl(
                            Uri.parse(urlReference),
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw 'Could not launch $urlReference';
                          }
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 30, left: 23, bottom: 5),
                        child: CustomText(
                          title: 'Тема оформления ',
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await themeState.changeTheme('light');
                                stream.sink.add(0);
                              },
                              child: ThemeCard(
                                title: 'Светлая',
                                icon: SvgImg.sun,
                                data: snapshot.data!,
                                isSelected:
                                    themeState.themeMode == ThemeMode.light &&
                                            snapshot.data == 0
                                        ? true
                                        : false,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await themeState.changeTheme('dark');
                                stream.sink.add(1);
                              },
                              child: ThemeCard(
                                title: 'Тёмная',
                                icon: SvgImg.moon,
                                data: snapshot.data!,
                                isSelected:
                                    themeState.themeMode == ThemeMode.dark &&
                                            snapshot.data == 1
                                        ? true
                                        : false,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await themeState.changeTheme('system');
                                stream.sink.add(2);
                              },
                              child: ThemeCard(
                                title: 'Системная',
                                icon: SvgImg.system,
                                data: snapshot.data!,
                                isSelected:
                                    snapshot.data! == 2 ? true : false,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
