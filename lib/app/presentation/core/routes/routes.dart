import 'package:flutter/material.dart';

import '../../pages/splash/splash_page.dart';

part 'page_route.dart';

abstract class AppRoutes {
  static const splash = PageRoute<NoArgs>('/');

  static Map<String, WidgetBuilder> get builders => {
        splash.path: (_) => SplashPage(),
      };
}
