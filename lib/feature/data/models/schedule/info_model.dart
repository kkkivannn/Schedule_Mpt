import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/info_entiti.dart';
part 'info_model.freezed.dart';
part 'info_model.g.dart';
@freezed
class InfoModel with _$InfoModel{
  const factory InfoModel({
    required final String day,
    required final String place,
  }) = _InfoModel;
  factory InfoModel.fromJson(Map<String, dynamic> json) => _$InfoModelFromJson;
}
