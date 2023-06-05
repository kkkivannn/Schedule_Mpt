import 'package:schedule_mpt/feature/domain/entiti/teacher/teacher_entiti.dart';

import '../subject/subject_entiti.dart';

class SubjectsEntiti {
  final String number;
  final SubjectEntiti subject;
  final TeacherEntiti teacher;
  SubjectsEntiti({
    required this.number,
    required this.subject,
    required this.teacher,
  });
}
