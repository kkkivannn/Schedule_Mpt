// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplaceDto _$ReplaceDtoFromJson(Map<String, dynamic> json) => ReplaceDto(
      from: json['from'] as String,
      to: json['to'] as String,
      lessonNumber: json['lessonNumber'] as String,
      updateAt: json['updateAt'] as String,
    );

Map<String, dynamic> _$ReplaceDtoToJson(ReplaceDto instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'lessonNumber': instance.lessonNumber,
      'updateAt': instance.updateAt,
    };
