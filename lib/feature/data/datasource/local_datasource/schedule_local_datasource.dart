import 'package:schedule_mpt/feature/data/dto/schedule/schedule/schedule_dto.dart';
import 'package:schedule_mpt/feature/data/dto/week/week_dto.dart';

abstract class ScheduleLocalDatasource {
  Future<List<ScheduleDto>> getSavesSchedule();
  Future<void> saveSchedule(List<ScheduleDto> scheduleDto);
  Future<bool> getSchedule();
  Future<WeekDto> getWeek();
  Future<void> saveWeek(WeekDto weekDto);
  Future<bool> isHaveWeek();
}
