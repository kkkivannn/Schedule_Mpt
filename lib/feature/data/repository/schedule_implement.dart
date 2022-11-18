import 'package:schedule_mpt/feature/data/datasource/remote_datasource/schedule_remote_datasource.dart';
import 'package:schedule_mpt/feature/data/dto/groups/groups_dto.dart';
import 'package:schedule_mpt/feature/data/dto/replacement/replacement_dto.dart';
import 'package:schedule_mpt/feature/data/dto/schedule/schedule/schedule_dto.dart';
import 'package:schedule_mpt/feature/data/dto/specialities/specialities_dto.dart';
import 'package:schedule_mpt/feature/data/dto/week/week_dto.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replacement_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/specialities/specialities_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/groups/groups_entiti.dart';
import 'package:schedule_mpt/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';
import 'package:schedule_mpt/feature/domain/repositories/schedule_repository.dart';

class ScheduleRepositoryImplement implements ScheduleRepository {
  final ScheduleRemoteDatasource scheduleRemoteDatasource;

  ScheduleRepositoryImplement(this.scheduleRemoteDatasource);
  @override
  Future<Either<Failure, WeekEntiti>> getWeek(String endpoint) async {
    return await _getWeek(() => scheduleRemoteDatasource.getWeek(endpoint));
  }

  @override
  Future<Either<Failure, GroupsEntiti>> getGroups(String endpoint) async {
    return await _getGroups(() => scheduleRemoteDatasource.getGroups(endpoint));
  }

  @override
  Future<Either<Failure, ReplacementEntiti>> getReplacement(
      String endpoint) async {
    return await _getReplacement(
        () => scheduleRemoteDatasource.getReplacement(endpoint));
  }

  @override
  Future<Either<Failure, List<ScheduleEntiti>>> getSchedule(String endpoint) async {
    return await _getSchedule(
        () => scheduleRemoteDatasource.getSchedule(endpoint));
  }

  @override
  Future<Either<Failure, SpecialitiesEntiti>> getSpecialities(
      String endpoint) async {
    return await _getSpecialities(
        () => scheduleRemoteDatasource.getSpecialities(endpoint));
  }

  

  Future<Either<Failure, WeekDto>> _getWeek(
      Future<WeekDto> Function() week) async {
    try {
      final weekModel = await week();
      return Right(weekModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, GroupsDto>> _getGroups(
      Future<GroupsDto> Function() groups) async {
    try {
      final groupsModel = await groups();
      return Right(groupsModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, ReplacementDto>> _getReplacement(
      Future<ReplacementDto> Function() replacement) async {
    try {
      final replacementModel = await replacement();
      return Right(replacementModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<ScheduleDto>>> _getSchedule(
      Future<List<ScheduleDto>> Function() schedule) async {
    try {
      final scheduleDto = await schedule();
      return Right(scheduleDto);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, SpecialitiesDto>> _getSpecialities(
      Future<SpecialitiesDto> Function() specialities) async {
    try {
      final specialitiesModel = await specialities();
      return Right(specialitiesModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }
  
  
}
