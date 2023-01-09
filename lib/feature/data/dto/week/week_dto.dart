import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';

class WeekDto extends WeekEntiti {
  WeekDto({
    required final String week,
    required final String next,
  }) : super(week: week, next: next);
  factory WeekDto.fromJson(Map<String, dynamic> json) => WeekDto(
        week: json["week"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "week": week,
        "next": next,
      };
}
