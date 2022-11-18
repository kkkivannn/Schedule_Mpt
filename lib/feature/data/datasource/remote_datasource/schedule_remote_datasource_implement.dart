

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/core/error/exception.dart';
import 'package:schedule_mpt/feature/data/datasource/remote_datasource/schedule_remote_datasource.dart';
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
  Future<GroupsEntiti> getGroups(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return GroupsDto.fromJson(response.data).toEntiti();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ReplacementEntiti> getReplacement(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return ReplacementDto.fromJson(response.data).toEntiti();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ScheduleEntiti>> getSchedule(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((json) => ScheduleDto.fromJson(json).toEntiti())
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<SpecialitiesEntiti> getSpecialities(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return SpecialitiesDto.fromJson(response.data).toEntiti();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<WeekEntiti> getWeek(String endpoint) async {
    final response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      return WeekDto.fromJson(response.data).toEntiti();
    } else {
      throw ServerException();
    }
  }
}
