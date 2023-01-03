import 'package:flutter/material.dart';
import 'package:schedule_mpt/feature/presentation/components/schedule_builder.dart';
import 'package:schedule_mpt/feature/presentation/home_page/view/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const ScheduleBuilder(),
        );
      case '/HomePage':
        return MaterialPageRoute(builder: (context) => const HomePage());

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
