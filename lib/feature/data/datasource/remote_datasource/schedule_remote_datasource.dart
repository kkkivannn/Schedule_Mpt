import 'package:schedule_mpt/feature/data/dto/groups/groups_dto.dart';
import 'package:schedule_mpt/feature/data/dto/replacement/replacement_dto.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/schedule/schedule_dto.dart';
import 'package:schedule_mpt/feature/data/dto/specialities/specialities_dto.dart';
import 'package:schedule_mpt/feature/data/dto/week/week_dto.dart';

abstract class ScheduleRemoteDatasource {
  Future<List<ScheduleDto>> getSchedule(String endpoint);
  Future<WeekDto> getWeek(String endpoint);
  Future<SpecialitiesDto> getSpecialities(String endpoint);
  Future<GroupsDto> getGroups(String endpoint);
  Future<ReplacementDto> getReplacement(String endpoint);
}
