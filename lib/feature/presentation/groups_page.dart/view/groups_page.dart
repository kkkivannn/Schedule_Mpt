import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_cubit.dart';
import '../../hello_page/view/hello_page.dart';
import '../controller/groups_page_state.dart';
import '../widget/groups_card.dart';

class GroupsPage extends StatelessWidget {
  final String specialities;
  const GroupsPage({
    super.key,
    required this.specialities,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsCubit, GroupsState>(
      builder: (context, state) {
        if (state is GroupsLoadedState) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Выберите группу',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: state.groupsEntiti.groups.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return GroupsCard(
                          title: state.groupsEntiti.groups[index],
                          onTap: () {
                            context.read<LoadingContainerCubit>().fetchSchedule(
                                '/timetable/?groupname=${state.groupsEntiti.groups[index]}');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelloPage(
                                  group: state.groupsEntiti.groups[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (state is GroupsErrorState) {
          return const Scaffold(
            body: Center(
              child: Text('Error!'),
            ),
          );
        }
        return const SafeArea(
          child: Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Color(0xff5A567B),
              ),
            ),
          ),
        );
      },
    );
  }
}
