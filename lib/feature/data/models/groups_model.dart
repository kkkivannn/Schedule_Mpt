import 'package:schedule_mpt/feature/domain/entiti/groups_entiti.dart';

class GroupsModel extends GroupsEntiti {
  GroupsModel({
    required final List<String> groups,
  }) : super(
          groups: groups,
        );
  factory GroupsModel.fromJson(Map<String, dynamic> json) => GroupsModel(
        groups: List<String>.from(
          (json['groups'] as List<dynamic>).map((json) => json),
        ).toList(),
      );
}
