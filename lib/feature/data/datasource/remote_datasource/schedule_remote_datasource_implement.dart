

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/core/error/exception.dart';
import 'package:schedule_mpt/feature/data/datasource/remote_datasource/schedule_remote_datasource.dart';
import 'package:schedule_mpt/feature/data/models/groups_model.dart';
import 'package:schedule_mpt/feature/data/models/replacement_model.dart';
import 'package:schedule_mpt/feature/data/models/schedule/schedule_model.dart';
import 'package:schedule_mpt/feature/data/models/specialities_model.dart';
import 'package:schedule_mpt/feature/data/models/week_model.dart';

class ScheduleRemoteDatasourceImplement implements ScheduleRemoteDatasource {
  Dio _dio = Dio();
  ScheduleRemoteDatasourceImplement() {
    _dio = Dio(
      BaseOptions(baseUrl: baseUrl),
    );
    initializeInterceptor();
  }
  initializeInterceptor() {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  @override
  Future<GroupsModel> getGroups(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return GroupsModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ReplacementModel> getReplacement(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return ReplacementModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ScheduleModel>> getSchedule(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((json) => ScheduleModel.fromJson(json))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<SpecialitiesModel> getSpecialities(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return SpecialitiesModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<WeekModel> getWeek(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return WeekModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
