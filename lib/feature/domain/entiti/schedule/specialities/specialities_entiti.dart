import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialities_entiti.freezed.dart';
part 'specialities_entiti.g.dart';

@freezed
class SpecialitiesEntiti with _$SpecialitiesEntiti {
  const factory SpecialitiesEntiti({
    required final List<String> specialities,
  }) = _SpecialitiesEntiti;
  factory SpecialitiesEntiti.fromJson(Map<String, dynamic> json) =>
      _$SpecialitiesEntitiFromJson(json);
}
