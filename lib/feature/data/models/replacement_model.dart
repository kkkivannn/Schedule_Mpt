import 'package:schedule_mpt/feature/domain/entiti/replacement_entiti.dart';

import 'replace_model.dart';

class ReplacementModel extends ReplacementEntiti {
  ReplacementModel({
    required final List<ReplaceModel> replacement,
  }) : super(
          replacement: replacement,
        );
  factory ReplacementModel.fromJson(Map<String, dynamic> json) =>
      ReplacementModel(
        replacement: List<ReplaceModel>.from(
          (json['replecement'] as List<dynamic>)
              .map((json) => ReplaceModel.fromJson(json))
              .toList(),
        ),
      );
}
