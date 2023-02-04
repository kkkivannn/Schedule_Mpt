import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:schedule_mpt/constants_images/theme.dart';
import 'package:schedule_mpt/core/helpers/themes/provider/theme_provider.dart';
import 'package:schedule_mpt/feature/presentation/components/controller/schedule_builder_cubit.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/controller/groups_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/home_page/controller/home_page_cubit.dart';
import 'package:schedule_mpt/feature/presentation/review/widgets/app_bar/controller/app_bar_cubit.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/controller/specialities_page_cubit.dart';
import 'package:schedule_mpt/rout_generator.dart';
import 'injection.container.dart' as di;
import 'injection.container.dart';

Future<void> frameRate() async {
  try {
    await FlutterDisplayMode.setHighRefreshRate();
  } on PlatformException catch (_) {
    await FlutterDisplayMode.setLowRefreshRate();
  }
}

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<dynamic>('ScheduleMpt');
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runApp(
    ChangeNotifierProvider<UserThemeProvider>(
      create: (_) => UserThemeProvider()..initialize(),
      child: const MyApp(),
    ),
  );
  await frameRate();

}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SpecialitiesCubit>(
            create: (context) => sl<SpecialitiesCubit>()),
        BlocProvider<GroupsCubit>(
          create: (context) => sl<GroupsCubit>(),
        ),
        BlocProvider<HomePageCubit>(
          create: (context) => sl<HomePageCubit>(),
        ),
        BlocProvider<ScheduleBuilderCubit>(
          create: (context) => sl<ScheduleBuilderCubit>(),
        ),
        BlocProvider<AppBarCubit>(
          create: (context) => sl<AppBarCubit>(),
        ),
      ],
      child: Consumer<UserThemeProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            themeMode: provider.themeMode,
            title: 'Schedule MPT',
            initialRoute: '/',
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}
