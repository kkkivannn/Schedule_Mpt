import 'package:schedule_mpt/feature/domain/entiti/schedule/info_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/subjects_entiti.dart';

class ScheduleEntiti {
  final InfoEntiti info;
  final List<SubjectsEntiti> subjects;

  ScheduleEntiti({required this.info, required this.subjects});
}
