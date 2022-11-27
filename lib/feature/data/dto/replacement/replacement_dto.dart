import 'package:schedule_mpt/feature/data/dto/replacement/replace_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replace_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replacement_entiti.dart';

class ReplacementDto extends ReplacementEntiti {
  ReplacementDto({required final List<ReplaceEntiti> replace})
      : super(replace: replace);
  factory ReplacementDto.fromJson(Map<String, dynamic> json) => ReplacementDto(
        replace: List<ReplaceDto>.from(
          (json["replace"] as List<dynamic>)
              .map((x) => ReplaceDto.fromJson(x))
              .toList(),
        ),
      );
}
