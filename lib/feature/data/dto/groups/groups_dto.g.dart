// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupsDto _$GroupsDtoFromJson(Map<String, dynamic> json) => GroupsDto(
      groups:
          (json['groups'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GroupsDtoToJson(GroupsDto instance) => <String, dynamic>{
      'groups': instance.groups,
    };
