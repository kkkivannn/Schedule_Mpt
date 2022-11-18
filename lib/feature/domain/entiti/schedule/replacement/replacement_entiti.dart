import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replace_entiti.dart';
part 'replacement_entiti.freezed.dart';
part 'replacement_entiti.g.dart';

@freezed
class ReplacementEntiti with _$ReplacementEntiti {
  const factory ReplacementEntiti({
    required final List<ReplaceEntiti> replacement,
  }) = _ReplacementEntiti;
  factory ReplacementEntiti.fromJson(Map<String, dynamic> json) =>
      _$ReplacementEntitiFromJson(json);
}
