import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/groups/groups_entiti.dart';
part 'groups_dto.g.dart';
@JsonSerializable()
class GroupsDto{
   final List<String> groups;

  GroupsDto({required this.groups});
  factory GroupsDto.fromJson(Map<String, dynamic> json) => _$GroupsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$GroupsDtoToJson(this);
  GroupsEntiti toEntiti(){
    return GroupsEntiti(groups: groups);
  }
}