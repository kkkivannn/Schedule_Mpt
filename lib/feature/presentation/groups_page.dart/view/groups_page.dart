import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import '../controller/groups_page_state.dart';
import '../widget/groups_card.dart';

class GroupsPage extends StatefulWidget {
  final String specialities;
  const GroupsPage({
    super.key,
    required this.specialities,
  });

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsCubit, GroupsState>(
      builder: (context, state) {
        if (state is GroupsEmptyState) {
          context
              .read<GroupsCubit>()
              .fetchGroups("/groups/?speciality=${widget.specialities}");
        }
        if (state is GroupsLoadedState) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Специальность: ${widget.specialities}',
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 30,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Найди свою группу',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      physics: const ClampingScrollPhysics(),
                      itemCount: state.groupsEntiti.groups.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GroupsCard(
                          title: state.groupsEntiti.groups[index],
                          onTap: () async {
                            context
                                .read<HomePageCubit>()
                                .saveGroup(state.groupsEntiti.groups[index]);
                            await context.read<HomePageCubit>().fetchSchedule(
                                '/timetable/?number_group=${state.groupsEntiti.groups[index]}',
                                '/week/');
                            context.read<ScheduleBuilderCubit>().getSchedule();
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "/HomePage", (route) => false);
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (state is GroupsErrorState) {
          return const Scaffold(
            body: Center(
              child: Text('Error!'),
            ),
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
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 0),
                physics: const BouncingScrollPhysics(),
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
            )
          ],
        );
      },
    );
  }
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}