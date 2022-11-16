import 'package:schedule_mpt/core/app/app_builder.dart';

abstract class AppRunner{
    Future<void> preloadData();
    Future<void>run(AppBuilder appBuilder);
}