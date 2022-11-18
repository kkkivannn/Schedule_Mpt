import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replace_entiti.dart';
part 'replace_dto.g.dart';

@JsonSerializable()
class ReplaceDto {
  final String from;
  final String to;
  final String lessonNumber;
  final String updateAt;

  ReplaceDto({
    required this.from,
    required this.to,
    required this.lessonNumber,
    required this.updateAt,
  });
  factory ReplaceDto.fromJson(Map<String, dynamic> json) =>
      _$ReplaceDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ReplaceDtoToJson(this);
}
