import 'package:schedule_mpt/feature/domain/entiti/schedule/groups/groups_entiti.dart';

class GroupsDto extends GroupsEntiti {
  GroupsDto({required final List<String> groups}) : super(groups: groups);
  factory GroupsDto.fromJson(Map<String, dynamic> json) => GroupsDto(
        groups: List<String>.from(
            (json["groups"] as List<dynamic>).map((x) => x).toList()),
      );
}
