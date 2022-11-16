import 'package:dartz/dartz.dart';
import 'package:schedule_mpt/core/error/failure.dart';
import 'package:schedule_mpt/feature/domain/entiti/groups_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/replacement_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/specialities_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/week_entiti.dart';

abstract class ScheduleRepository {
  Future<Either<Failure, WeekEntiti>> getWeek(String endpoint);
  Future<Either<Failure, SpecialitiesEntiti>> getSpecialities(String endpoint);
  Future<Either<Failure, GroupsEntiti>> getGroups(String endpoint);
  Future<Either<Failure, ReplacementEntiti>> getReplacement(String endpoint);
  Future<Either<Failure, List<ScheduleEntiti>>> getSchedule(String endpoint);
}
