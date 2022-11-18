// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replacement_entiti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplacementEntiti _$$_ReplacementEntitiFromJson(Map<String, dynamic> json) =>
    _$_ReplacementEntiti(
      replacement: (json['replacement'] as List<dynamic>)
          .map((e) => ReplaceEntiti.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReplacementEntitiToJson(
        _$_ReplacementEntiti instance) =>
    <String, dynamic>{
      'replacement': instance.replacement,
    };
