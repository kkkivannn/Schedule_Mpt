import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/data/dto/replacement/replace_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replacement_entiti.dart';
part 'replacement_dto.g.dart';
@JsonSerializable()
class ReplacementDto {
  final dynamic replacement;

  ReplacementDto({
    required this.replacement,
  });
  factory ReplacementDto.fromJson(Map<String, dynamic> json) => _$ReplacementDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ReplacementDtoToJson(this);
  ReplacementEntiti toEntiti(){
    return ReplacementEntiti(replacement: replacement);
  }
}
