import 'package:schedule_mpt/feature/data/dto/groups/groups_dto.dart';
import 'package:schedule_mpt/feature/data/dto/replacement/replacement_dto.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/schedule/schedule_dto.dart';
import 'package:schedule_mpt/feature/data/dto/specialities/specialities_dto.dart';
import 'package:schedule_mpt/feature/data/dto/week/week_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/groups/groups_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replacement_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/specialities/specialities_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';

abstract class ScheduleRemoteDatasource {
  Future<List<ScheduleEntiti>> getSchedule(String endpoint);
  Future<WeekEntiti> getWeek(String endpoint);
  Future<SpecialitiesEntiti> getSpecialities(String endpoint);
  Future<GroupsEntiti> getGroups(String endpoint);
  Future<ReplacementEntiti> getReplacement(String endpoint);
}
