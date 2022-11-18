// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_entiti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleEntiti _$$_ScheduleEntitiFromJson(Map<String, dynamic> json) =>
    _$_ScheduleEntiti(
      info: InfoEntiti.fromJson(json['info'] as Map<String, dynamic>),
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => SubjectsEntiti.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleEntitiToJson(_$_ScheduleEntiti instance) =>
    <String, dynamic>{
      'info': instance.info,
      'subjects': instance.subjects,
    };
