import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_theme_data.dart';
import 'package:meal_monkey/config/routes.dart' as router;
import 'package:meal_monkey/const/route_paths.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey',
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      routes: router.generateRoute(),
      initialRoute: RoutesPaths.splash,
    );
  }
}


