import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_state.dart';
import 'package:schedule_mpt/feature/presentation/settings/widgets/group_specialities.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return SafeArea(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 37, left: 23, bottom: 27),
                child: Text(
                  'Настройки',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              GroupAndSpecialitiesWidget(
                title: "Специальность",
                groupOrSpecialities: "",
                onTap: () => BottomSheets(context: context)
                    .schowSpecialitiesBottomSheet(),
              ),
              GroupAndSpecialitiesWidget(
                title: "Группа",
                groupOrSpecialities: "",
                onTap: () async => BottomSheets(context: context)
                    .schowGroupsBottomSheet(
                        await context.read<HomePageCubit>().getSpecialities()),
              ),
            ],
          ),
        );
      },
    );
  }
}
