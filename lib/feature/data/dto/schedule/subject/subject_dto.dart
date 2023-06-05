import 'package:schedule_mpt/feature/domain/entiti/schedule/subject/subject_entiti.dart';

class SubjectDto extends SubjectEntiti {
  SubjectDto({
    required final String sub,
    required final String numerator,
    required final String denominator,
  }) : super(
          sub: sub,
          numerator: numerator,
          denominator: denominator,
        );
  factory SubjectDto.fromJson(Map<String, dynamic> json) => SubjectDto(
        sub: json['sub'] ?? "",
        numerator: json['numerator'] ?? "",
        denominator: json['denominator'] ?? '',
      );
  Map<String, dynamic> toJson() {
    return {
      "sub": sub,
      "numerator": numerator,
      "denominator": denominator,
    };
  }
}
