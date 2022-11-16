import 'package:schedule_mpt/feature/data/datasource/remote_datasource/schedule_remote_datasource.dart';
import 'package:schedule_mpt/feature/data/models/groups_model.dart';
import 'package:schedule_mpt/feature/data/models/replacement_model.dart';
import 'package:schedule_mpt/feature/data/models/schedule/schedule_model.dart';
import 'package:schedule_mpt/feature/data/models/specialities_model.dart';
import 'package:schedule_mpt/feature/data/models/week_model.dart';
import 'package:schedule_mpt/feature/domain/entiti/replacement_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/specialities_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/groups_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/week_entiti.dart';
import 'package:schedule_mpt/core/error/failure.dart';
import 'package:dartz/dartz.dart';
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

  

  Future<Either<Failure, WeekModel>> _getWeek(
      Future<WeekModel> Function() week) async {
    try {
      final weekModel = await week();
      return Right(weekModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, GroupsModel>> _getGroups(
      Future<GroupsModel> Function() groups) async {
    try {
      final groupsModel = await groups();
      return Right(groupsModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, ReplacementModel>> _getReplacement(
      Future<ReplacementModel> Function() replacement) async {
    try {
      final replacementModel = await replacement();
      return Right(replacementModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<ScheduleModel>>> _getSchedule(
      Future<List<ScheduleModel>> Function() schedule) async {
    try {
      final scheduleModel = await schedule();
      return Right(scheduleModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, SpecialitiesModel>> _getSpecialities(
      Future<SpecialitiesModel> Function() specialities) async {
    try {
      final specialitiesModel = await specialities();
      return Right(specialitiesModel);
    } catch (_) {
      return Left(ServerFailure());
    }
  }
  
  
}
