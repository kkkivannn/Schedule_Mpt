import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_mpt/constants_images/theme.dart';

class ThemeCard extends StatefulWidget {
  final String title;
  final String icon;
  final int data;
  final bool isSelected;
  const ThemeCard({
    super.key,
    required this.title,
    required this.icon,
    required this.data,
    required this.isSelected,
  });

  @override
  State<ThemeCard> createState() => _ThemeCardState();
}

class _ThemeCardState extends State<ThemeCard> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: 100,
      key: Key(Theme.of(context).brightness.toString()),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff282720)
                : const Color(0xffEAE9E5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 3,
          color: (widget.data == 0 && widget.isSelected)
              ? const Color(0xffFAD06F)
              : (widget.data == 1 && widget.isSelected)
                  ? const Color(0xff75ACF8)
                  : (widget.data == 2 && widget.isSelected)
                      ? const Color(0xffB9BEE3)
                      : Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.icon,
            color: (widget.data == 0 && widget.isSelected)
                ? const Color(0xffFAD06F)
                : (widget.data == 1 && widget.isSelected)
                    ? const Color(0xff75ACF8)
                    : (widget.data == 2 && widget.isSelected)
                        ? const Color(0xffB9BEE3)
                        : Colors.grey[600],
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            title: widget.title,
            color: (widget.data == 0 && widget.isSelected)
                ? const Color(0xffFAD06F)
                : (widget.data == 1 && widget.isSelected)
                    ? const Color(0xff75ACF8)
                    : (widget.data == 2 && widget.isSelected)
                        ? const Color(0xffB9BEE3)
                        : Colors.grey[600]!,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
