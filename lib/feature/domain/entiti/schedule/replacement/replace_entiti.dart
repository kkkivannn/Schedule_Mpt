import 'package:freezed_annotation/freezed_annotation.dart';
part 'replace_entiti.freezed.dart';
part 'replace_entiti.g.dart';
@freezed
class ReplaceEntiti with _$ReplaceEntiti{
  const factory ReplaceEntiti({
    required final String from,
    required final String lessonNumber,
    required final String to,
    required final String updateAt,
  }) = _ReplaceEntiti;
  factory ReplaceEntiti.fromJson(Map<String, dynamic> json) => _$ReplaceEntitiFromJson(json);


}
