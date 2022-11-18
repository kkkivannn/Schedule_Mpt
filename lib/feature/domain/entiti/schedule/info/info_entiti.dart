import 'package:freezed_annotation/freezed_annotation.dart';
part 'info_entiti.freezed.dart';
part 'info_entiti.g.dart';
@freezed
class InfoEntiti with _$InfoEntiti {
  const factory InfoEntiti({
    required final String day,
    required final String place,
  }) = _InfoEntiti;
  factory InfoEntiti.fromJson(Map<String, dynamic> json) => _$InfoEntitiFromJson(json);     
}
