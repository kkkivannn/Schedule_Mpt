import 'package:hive/hive.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

import 'schedule_local_datasource.dart';

class ScheduleLocalDatasourceImplements implements ScheduleLocalDatasource {
  static Box<dynamic> savedSchedule = Hive.box('ScheduleMpt');
  List<dynamic> savedUserSchedule = savedSchedule.get('savedUserSchedule', defaultValue: []);
  @override
  bool checkIsHaveSchedule()  {
    savedUserSchedule = savedSchedule.get('savedUserSchedule', defaultValue: []);
    return savedUserSchedule.isEmpty;
  }

  @override
  List<ScheduleEntiti> getSchedule() {
    return savedUserSchedule[0];
  }

  @override
  Future<void> saveSchedule(List<ScheduleEntiti> scheduleEntiti) async {
    savedUserSchedule.add(scheduleEntiti);
    savedSchedule.put("savedUserSchedule", savedUserSchedule);
  }

  @override
  Future<void> updateSchedule(List<ScheduleEntiti> scheduleEntiti) async {
    savedSchedule.clear();
    saveSchedule(scheduleEntiti);
  }
}
