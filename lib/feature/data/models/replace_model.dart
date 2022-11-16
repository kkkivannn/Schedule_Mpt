import 'package:schedule_mpt/feature/domain/entiti/replace_entiti.dart';

class ReplaceModel extends ReplaceEntiti {
  ReplaceModel({
    required final String from,
    required final String to,
    required final String lessonNumber,
    required final String updateAt,
  }) : super(
          from: from,
          to: to,
          lessonNumber: lessonNumber,
          updateAt: updateAt,
        );
  factory ReplaceModel.fromJson(Map<String, dynamic> json) => ReplaceModel(
        from: json['from'] ?? "",
        to: json['to'] ?? "",
        lessonNumber: json['lessonNumber'] ?? "",
        updateAt: json['updateAt'] ?? "",
      );
}
