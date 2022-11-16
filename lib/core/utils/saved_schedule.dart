import 'package:hive/hive.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

class SavedSchedule{
  static Box<dynamic> savedSchedule = Hive.box('ScheduleMpt');
  List<dynamic> savedUserSchedule = savedSchedule.get('savedUserSchedule', defaultValue: []);
  bool checkIsHaveSchedule()  {
    return savedUserSchedule.isEmpty;
  }
  List<ScheduleEntiti> getSchedule() {
    return savedUserSchedule[0];
  }
  void saveSchedule(List<ScheduleEntiti> scheduleEntiti)  {  
    savedUserSchedule.add(scheduleEntiti);
    savedSchedule.put("savedUserSchedule", savedUserSchedule);
  }
  void updateSchedule(List<ScheduleEntiti> scheduleEntiti) {
    savedSchedule.clear();
    saveSchedule(scheduleEntiti);
  }
}