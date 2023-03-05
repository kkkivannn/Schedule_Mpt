import 'package:equatable/equatable.dart';

class AppBarState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppBarEmptyState extends AppBarState {
  @override
  List<Object?> get props => [];
}

class AppBarUpdateValueState extends AppBarState {
  final int weekDay;
  final int weekDayAppBar;
  final int month;
  final int day;
  final String next;
  final String week;

  AppBarUpdateValueState({
    required this.weekDay,
    required this.weekDayAppBar,
    required this.month,
    required this.day,
    required this.next,
    required this.week,
  });
  @override
  List<Object?> get props => [weekDay, weekDayAppBar, month, day, next];
}
