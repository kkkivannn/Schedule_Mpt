// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectsModel _$$_SubjectsModelFromJson(Map<String, dynamic> json) =>
    _$_SubjectsModel(
      number: json['number'] as String,
      subject: SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: json['teacher'] as String,
    );

Map<String, dynamic> _$$_SubjectsModelToJson(_$_SubjectsModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'subject': instance.subject,
      'teacher': instance.teacher,
    };
