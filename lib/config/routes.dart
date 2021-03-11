import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/const/route_paths.dart';
import 'package:meal_monkey/ui/home/home.dart';
import 'package:meal_monkey/ui/login/login.dart';
import 'package:meal_monkey/ui/splash/splash.dart';
import 'package:meal_monkey/ui/walkthrough/walkthrough.dart';

Map<String, WidgetBuilder> generateRoute() {
  return {
    RoutesPaths.splash: (_) => Splash(),
    RoutesPaths.login: (_) => Login(),
    RoutesPaths.walkthrough: (_) => Walkthrough(),
    RoutesPaths.home:(_)=>Home()
  };
}
