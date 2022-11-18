// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_entiti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectsEntiti _$$_SubjectsEntitiFromJson(Map<String, dynamic> json) =>
    _$_SubjectsEntiti(
      number: json['number'] as String,
      subject: SubjectEntiti.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: json['teacher'] as String,
    );

Map<String, dynamic> _$$_SubjectsEntitiToJson(_$_SubjectsEntiti instance) =>
    <String, dynamic>{
      'number': instance.number,
      'subject': instance.subject,
      'teacher': instance.teacher,
    };
