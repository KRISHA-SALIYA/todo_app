import 'package:flutter/material.dart';

import '../views/screen/home_page/home_page.dart';
import '../views/screen/intro_1/intro_1.dart';
import '../views/screen/intro_2/intro_2.dart';
import '../views/screen/intro_3/intro_3.dart';
import '../views/screen/intro_4/intro_4.dart';
import '../views/screen/splesh_page/splesh_page.dart';

class AppRoutes {
  String spleshPage = '/';
  // String introPage = 'introPage';
  // String introPage2 = 'introPage2';
  // String introPage3 = 'introPage3';
  // String introPage4 = 'introPage4';

  String homePage = 'homePage';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SpleshPage(),
    // 'introPage': (context) => IntroPage(),
    // 'introPage2': (context) => IntroPage2(),
    // 'introPage3': (context) => IntroPage3(),
    // 'introPage4': (context) => IntroPage4(),
    'homePage': (context) => const HomePage(),
  };
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
}
