import 'package:flutter/material.dart';

import '../../pages/search_user/search_user_page.dart';
import '../../pages/splash/splash_page.dart';

part 'page_route.dart';

abstract class AppRoutes {
  static const splash = PageRoute<NoArgs>('/');

  static const searchUser = PageRoute<NoArgs>('/search-user');

  static Map<String, WidgetBuilder> get builders => {
        splash.path: (_) => SplashPage(),
        searchUser.path: (_) => SearchUserPage(),
      };
}
