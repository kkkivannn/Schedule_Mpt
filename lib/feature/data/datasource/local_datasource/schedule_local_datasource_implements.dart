import 'dart:convert';

import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/core/error/exception.dart';
import 'package:schedule_mpt/feature/data/datasource/local_datasource/schedule_local_datasource.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/schedule/schedule_dto.dart';
import 'package:schedule_mpt/feature/data/dto/week/week_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScheduleLocalDatasorceImplement implements ScheduleLocalDatasource {
  final SharedPreferences sharedPreferences;

  ScheduleLocalDatasorceImplement(this.sharedPreferences);
  @override
  Future<List<ScheduleDto>> getSavesSchedule() {
    final jsonListString = sharedPreferences.getStringList(SAVED_SCHEDULE);
    if (jsonListString != null) {
      return Future.value(
        (jsonListString)
            .map((schedule) => ScheduleDto.fromJson(json.decode(schedule)))
            .toList(),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveSchedule(List<ScheduleDto> scheduleDto) async {
    final List<String> scheduleDtoList =
        scheduleDto.map((schedule) => json.encode(schedule.toJson())).toList();
    await sharedPreferences.setStringList(SAVED_SCHEDULE, scheduleDtoList);
  }

  @override
  Future<bool> getSchedule() async {
    final jsonListString = sharedPreferences.getStringList(SAVED_SCHEDULE);
    if (jsonListString != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<WeekDto> getWeek() {
    final week = sharedPreferences.getString(SAVED_WEEK);
    if (week != null) {
      return Future.value(WeekDto.fromJson(jsonDecode(week)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveWeek(WeekDto weekDto) async {
    await sharedPreferences.setString(SAVED_WEEK, jsonEncode(weekDto.toJson()));
  }

  @override
  Future<bool> isHaveWeek() async {
    final week = sharedPreferences.getString(SAVED_WEEK);
    if (week != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> saveGroup(String group) async {
    await sharedPreferences.setString(SAVED_USER_GROUP, group);
  }

  @override
  Future<String> getGroup() async {
    final group = sharedPreferences.getString(SAVED_USER_GROUP);
    if (group != null) {
      print(group);
      return group;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<String> getSpecialities() async {
    final specialities = sharedPreferences.getString(SAVED_USER_SPECIALITIES);
    if (specialities != null) {
      print(specialities);
      return specialities;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveSpecialities(String specialities) async {
    await sharedPreferences.setString(SAVED_USER_SPECIALITIES, specialities);
  }
}
