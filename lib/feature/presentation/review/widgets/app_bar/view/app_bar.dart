import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_state.dart';

import '../../../../../../core/helpers/values.dart';

class AppBarWidget extends StatefulWidget {
  final String week;

  const AppBarWidget({
    super.key,
    required this.week,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AppBarCubit, AppBarState>(
      builder: (context, state) {
        if (state is AppBarUpdateValueState) {
          return Container(
            width: size.width,
            height: 110,
            decoration: BoxDecoration(
              // color: Colors.grey,
              // borderRadius: BorderRadius.vertical(
              //   bottom:
              //       Radius.elliptical(MediaQuery.of(context).size.width, 75),
              // ),
              image: DecorationImage(
                image: AssetImage(
                    widget.week == "Числитель" ? Img.chisl : Img.znaml),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.week,
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${WeekDay.days[state.weekDayAppBar]}, ",
                      style: const TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "${state.day} ${Months.months[state.month]}",
                      style: const TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }
        return Container(
          width: size.width,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(
                  widget.week == "Числитель" ? Img.chisl : Img.znaml),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.week,
                style: const TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${WeekDay.days[weekDayAppBar]}, ",
                    style: const TextStyle(
                      fontFamily: "Roboto",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "$dayAppBar ${Months.months[monthAppBar]}",
                    style: const TextStyle(
                      fontFamily: "Roboto",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
