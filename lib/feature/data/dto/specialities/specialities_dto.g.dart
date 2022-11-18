// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialitiesDto _$SpecialitiesDtoFromJson(Map<String, dynamic> json) =>
    SpecialitiesDto(
      specialities: (json['specialities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SpecialitiesDtoToJson(SpecialitiesDto instance) =>
    <String, dynamic>{
      'specialities': instance.specialities,
    };
