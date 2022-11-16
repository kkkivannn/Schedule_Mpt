import 'package:schedule_mpt/feature/domain/entiti/week_entiti.dart';

class WeekModel extends WeekEntiti {
  WeekModel({
    required final String week,
  }) : super(
          week: week,
        );

  factory WeekModel.fromJson(Map<String, dynamic> json) => WeekModel(
        week: json['week'] ?? "",
      );
}
