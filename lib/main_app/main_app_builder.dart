import 'package:flutter/material.dart';
import 'package:schedule_mpt/core/app/app_builder.dart';
import 'package:schedule_mpt/rout_generator.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Schedule MPT',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
