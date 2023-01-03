import 'package:schedule_mpt/core/error/failure.dart';
import 'package:schedule_mpt/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/groups/groups_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/replacement/replacement_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/specialities/specialities_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';
import 'package:schedule_mpt/feature/domain/repositories/schedule_repository.dart';

class GetWeek implements UseCase<WeekEntiti, EndpointParams> {
  final ScheduleRepository _scheduleRepository;

  GetWeek(this._scheduleRepository);
  @override
  Future<Either<Failure, WeekEntiti>> call(EndpointParams params) async {
    return await _scheduleRepository.getWeek(params.endpoint);
  }
}

class GetGroups implements UseCase<GroupsEntiti, EndpointParams> {
  final ScheduleRepository _scheduleRepository;

  GetGroups(this._scheduleRepository);
  @override
  Future<Either<Failure, GroupsEntiti>> call(EndpointParams params) async {
    return await _scheduleRepository.getGroups(params.endpoint);
  }
}

class GetReplacement implements UseCase<ReplacementEntiti, EndpointParams> {
  final ScheduleRepository _scheduleRepository;

  GetReplacement(this._scheduleRepository);

  @override
  Future<Either<Failure, ReplacementEntiti>> call(EndpointParams params) async {
    return await _scheduleRepository.getReplacement(params.endpoint);
  }
}

class GetSpecialities implements UseCase<SpecialitiesEntiti, EndpointParams> {
  final ScheduleRepository _scheduleRepository;

  GetSpecialities(this._scheduleRepository);
  @override
  Future<Either<Failure, SpecialitiesEntiti>> call(
      EndpointParams params) async {
    return await _scheduleRepository.getSpecialities(params.endpoint);
  }
}

class GetSchedule implements UseCase<List<ScheduleEntiti>, EndpointParams> {
  final ScheduleRepository _scheduleRepository;

  GetSchedule(this._scheduleRepository);

  @override
  Future<Either<Failure, List<ScheduleEntiti>>> call(EndpointParams params) async {
    return await _scheduleRepository.getSchedule(params.endpoint);
  }
}


class EndpointParams extends Equatable {
  final String endpoint;

  const EndpointParams({
    required this.endpoint,
  });
  @override
  List<Object?> get props => [endpoint];
}
