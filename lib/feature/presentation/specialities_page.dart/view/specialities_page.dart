import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_state.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/widgets/specialities_card.dart';

class SpecialitiesPage extends StatelessWidget {
  const SpecialitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialitiesCubit, SpecialitiesState>(
      builder: (context, state) {
        if (state is SpecialitiesEmptyState) {
          context.read<SpecialitiesCubit>().fetchSpecialities("/specialities");
        } else if (state is SpecialitiesLoadedState) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Выберите специальность',
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
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return SpecialitiesCard(
                          title: state.specialitiesEntiti.specialities[index],
                          onTap: () {
                            context.read<GroupsCubit>().fetchGroups(
                                "/groups/${state.specialitiesEntiti.specialities[index]}");
                            Navigator.pushNamed(
                              context,
                              "/GroupsPage",
                              arguments: {
                                'specialities': state
                                    .specialitiesEntiti.specialities[index],
                              },
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
        } else if (state is SpecialitiesErrorState) {
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
