import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replace_entiti.dart';
part 'replace_dto.g.dart';

@JsonSerializable()
class ReplaceDto extends ReplaceEntiti {
  ReplaceDto({
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
  factory ReplaceDto.fromJson(Map<String, dynamic> json) =>
      _$ReplaceDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ReplaceDtoToJson(this);
}
