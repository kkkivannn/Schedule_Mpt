import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/controller/loading_container/loading_container_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_cubit.dart';
import 'package:schedule_mpt/rout_generator.dart';
import 'injection.container.dart' as di;
import 'injection.container.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<dynamic>('ScheduleMpt');
  await di.init();

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SpecialitiesCubit>(
            create: (context) => sl<SpecialitiesCubit>()),
        BlocProvider<GroupsCubit>(
          create: (context) => sl<GroupsCubit>(),
        ),
        BlocProvider<LoadingContainerCubit>(
          create: (context) => sl<LoadingContainerCubit>(),
        ),
        BlocProvider<ScheduleBuilderCubit>(
            create: (context) => sl<ScheduleBuilderCubit>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Schedule MPT',
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    ),
  );
}
