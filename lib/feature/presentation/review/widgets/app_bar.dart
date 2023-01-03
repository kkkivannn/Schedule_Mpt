import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/constants.dart';

class AppBarWidget extends StatefulWidget {
  final String week;
  const AppBarWidget({super.key, required this.week});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(widget.week == "Числитель" ? Img.chisl : Img.znaml),
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
                "${WeekDay.days[DateTime.now().weekday]}, ",
                style: const TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "${DateTime.now().day} ${Months.months[DateTime.now().month]}",
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
}
