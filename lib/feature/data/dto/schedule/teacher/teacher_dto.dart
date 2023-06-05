import 'package:schedule_mpt/feature/domain/entiti/teacher/teacher_entiti.dart';

class TeacherDto extends TeacherEntiti {
  TeacherDto({
    required final String numerator,
    required final String denominator,
    required final String tech,
  }) : super(
          numerator: numerator,
          denominator: denominator,
          tech: tech,
        );
        factory TeacherDto.fromJson(Map<String, dynamic> json) => TeacherDto(
        numerator: json["numerator"] ?? '',
        denominator: json["denominator"] ?? '',
        tech: json["tech"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "numerator": numerator,
        "denominator": denominator,
        "tech": tech,
    };
}
