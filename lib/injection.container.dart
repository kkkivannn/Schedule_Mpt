import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:schedule_mpt/core/network/network_info.dart';
import 'package:schedule_mpt/feature/data/datasource/local_datasource/schedule_local_datasource.dart';
import 'package:schedule_mpt/feature/data/datasource/local_datasource/schedule_local_datasource_implements.dart';
import 'package:schedule_mpt/feature/data/datasource/remote_datasource/schedule_remote_datasource.dart';
import 'package:schedule_mpt/feature/data/repository/schedule_implement.dart';
import 'package:schedule_mpt/feature/domain/repositories/schedule_repository.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'feature/data/datasource/remote_datasource/schedule_remote_datasource_implement.dart';

final sl = GetIt.asNewInstance();

Future<void> init() async {
  //Cubit
  sl.registerFactory(() => SpecialitiesCubit(getSpecialities: sl()));
  sl.registerFactory(() => GroupsCubit(getGroups: sl()));
  sl.registerFactory(() => LoadingContainerCubit(getSchedule: sl(), getWeek: sl()));
  sl.registerFactory(() => ScheduleBuilderCubit(scheduleLocalDatasource: sl()));
  //Usecases
  sl.registerLazySingleton(() => GetWeek(sl()));
  sl.registerLazySingleton(() => GetSpecialities(sl()));
  sl.registerLazySingleton(() => GetGroups(sl()));
  sl.registerLazySingleton(() => GetReplacement(sl()));
  sl.registerLazySingleton(() => GetSchedule(sl()));
  //Repositories
  sl.registerLazySingleton<ScheduleRepository>(
      () => ScheduleRepositoryImplement(sl(), sl(), sl()));
  //Datasource
  sl.registerLazySingleton<ScheduleRemoteDatasource>(
      () => ScheduleRemoteDatasourceImplement());
  sl.registerLazySingleton<ScheduleLocalDatasource>(
      () => ScheduleLocalDatasorceImplement(sl()));   

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
  }
