import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

abstract class ScheduleLocalDatasource{
  void saveSchedule(List<ScheduleEntiti> scheduleEntiti);
  void updateSchedule(List<ScheduleEntiti> scheduleEntiti);
  List<ScheduleEntiti> getSchedule();
  bool checkIsHaveSchedule();
}