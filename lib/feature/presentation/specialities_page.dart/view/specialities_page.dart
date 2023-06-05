import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/core/helpers/functions.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_state.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/widgets/specialities_card.dart';

class SpecialitiesPage extends StatefulWidget {
  const SpecialitiesPage({super.key});

  @override
  State<SpecialitiesPage> createState() => _SpecialitiesPageState();
}

class _SpecialitiesPageState extends State<SpecialitiesPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialitiesCubit, SpecialitiesState>(
      builder: (context, state) {
        if (state is SpecialitiesEmptyState) {
          context.read<SpecialitiesCubit>().fetchSpecialities("/specialities");
        } else if (state is SpecialitiesLoadedState) {
          return Scaffold(
            backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff282720)
                : Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 80,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      title: 'Выбери свою специальность',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.specialitiesEntiti.specialities.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SpecialitiesCard(
                        title: state.specialitiesEntiti.specialities[index],
                        onTap: () async {
                          context.read<GroupsCubit>().fetchGroups(
                              "/groups/?speciality=${state.specialitiesEntiti.specialities[index]}");
                          await context.read<HomePageCubit>().saveSpecialities(
                              state.specialitiesEntiti.specialities[index]);
                          BottomSheets(context: context).schowGroupsBottomSheet(
                              state.specialitiesEntiti.specialities[index]);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          );
        } else if (state is SpecialitiesErrorState) {
          return const Center(
            child: Text('Error!'),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: CardLoading(
                  height: 18,
                  width: 260,
                  cardLoadingTheme: CardLoadingTheme(
                    colorOne: const Color(0xfff5f5f5),
                    colorTwo: Colors.grey[300]!,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  physics: const ClampingScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CardLoading(
                      height: 80,
                      cardLoadingTheme: CardLoadingTheme(
                        colorOne: const Color(0xfff5f5f5),
                        colorTwo: Colors.grey[300]!,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
