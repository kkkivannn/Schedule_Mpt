import 'package:schedule_mpt/feature/domain/entiti/schedule/subject_entiti.dart';

class SubjectsEntiti {
  final String number;
  final SubjectEntiti subject;
  final String teacher;

  SubjectsEntiti(
      {required this.number, required this.subject, required this.teacher});
}