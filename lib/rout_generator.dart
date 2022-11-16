import 'package:flutter/material.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';
import 'package:schedule_mpt/feature/presentation/groups_page.dart/view/groups_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/view/home_page.dart';
import 'package:schedule_mpt/feature/presentation/root_screen.dart/view/root_screen.dart';
import 'package:schedule_mpt/feature/presentation/specialities_page.dart/view/specialities_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const RootScreen(),
        );
      case '/SpecialitiesPage':
        return MaterialPageRoute(
            builder: (context) => const SpecialitiesPage());
      case '/GroupsPage':
        final arguments = settings.arguments as Map<String, dynamic>;
        if (arguments['specialities'] is String) {
          return MaterialPageRoute(
            builder: (context) => GroupsPage(
              specialities: arguments['specialities'] as String,
            ),
          );
        } else {
          return _errorRoute();
        }
      case '/HomePage':
        final arguments = settings.arguments as Map<String, dynamic>;
        if(arguments["schedule"] is List<ScheduleEntiti>){
          return MaterialPageRoute(builder: (context) => HomePage(schedule: arguments['schedule']));
        }else{
          return _errorRoute();
        }
      // final arguments = settings.arguments as Map<String, dynamic>;
      // if (arguments['title'] is String &&
      //     arguments["content"] is String &&
      //     arguments['url'] is String &&
      //     arguments['isSaved'] is bool) {
      //   return MaterialPageRoute(
      //     builder: (context) => NewsView(
      //       title: arguments['title'] as String,
      //       content: arguments['content'] as String,
      //       url: arguments['url'] as String,
      //       isSaved: arguments['isSaved'] as bool,
      //     ),
      //   );
      // } else {
      //   return _errorRoute();
      // }

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return const Scaffold(
      body: Center(
        child: Text('Error!'),
      ),
    );
  });
}
