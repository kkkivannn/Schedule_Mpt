// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialities_entiti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecialitiesEntiti _$$_SpecialitiesEntitiFromJson(
        Map<String, dynamic> json) =>
    _$_SpecialitiesEntiti(
      specialities: (json['specialities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SpecialitiesEntitiToJson(
        _$_SpecialitiesEntiti instance) =>
    <String, dynamic>{
      'specialities': instance.specialities,
    };
