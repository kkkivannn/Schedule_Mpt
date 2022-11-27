import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_cubit.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_state.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/widgets/loading_container.dart';

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
    return BlocBuilder<LoadingContainerCubit, LoadingContainerState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, left: 15),
                  child: Text(
                    'Добро пожаловать!',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 15, left: 28),
                  child: Text(
                    'Прежде чем начать, выберите группу',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.of(context).pushNamed('/SpecialitiesPage');
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Группа",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              widget.group ?? "",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                widget.group != null
                    ? LoadingContainer(
                        group: widget.group ?? "",
                        state: state,
                      )
                    : Container(),
                const Spacer(),
                state is LoadingContainerLoadedState
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  "/HomePage",
                                  arguments: {
                                    "schedule": state.scheduleEntiti,
                                    "week": state.weekEntiti
                                  },
                                  (route) => false);
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(500, 35)),
                              backgroundColor: const MaterialStatePropertyAll(
                                Color(0xff5A567B),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Text(
                                'Продолжить',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 10),
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(500, 35)),
                              backgroundColor: const MaterialStatePropertyAll(
                                Color(0xff5A567B),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Text(
                                'Продолжить',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
