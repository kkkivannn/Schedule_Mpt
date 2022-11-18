// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectsDto _$SubjectsDtoFromJson(Map<String, dynamic> json) => SubjectsDto(
      number: json['number'] as String,
      subject: json['subject'],
      teacher: json['teacher'] as String,
    );

Map<String, dynamic> _$SubjectsDtoToJson(SubjectsDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'subject': instance.subject,
      'teacher': instance.teacher,
    };
