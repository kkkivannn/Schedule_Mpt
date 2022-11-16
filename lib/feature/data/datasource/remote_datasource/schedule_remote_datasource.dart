import 'package:schedule_mpt/feature/data/models/groups_model.dart';
import 'package:schedule_mpt/feature/data/models/replacement_model.dart';
import 'package:schedule_mpt/feature/data/models/schedule/schedule_model.dart';
import 'package:schedule_mpt/feature/data/models/specialities_model.dart';
import 'package:schedule_mpt/feature/data/models/week_model.dart';

abstract class ScheduleRemoteDatasource {
  Future<List<ScheduleModel>> getSchedule(String endpoint);
  Future<WeekModel> getWeek(String endpoint);
  Future<SpecialitiesModel> getSpecialities(String endpoint);
  Future<GroupsModel> getGroups(String endpoint);
  Future<ReplacementModel> getReplacement(String endpoint);
}
