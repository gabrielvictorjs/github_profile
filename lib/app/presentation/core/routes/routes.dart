import 'package:flutter/material.dart';

import '../../pages/search_user/search_user_page.dart';
import '../../pages/splash/splash_page.dart';
import '../../pages/user_profile/user_profile_page.dart';
import 'args/user_profile_args.dart';

part 'page_route.dart';

abstract class AppRoutes {
  static const splash = PageRoute<NoArgs>('/');

  static const searchUser = PageRoute<NoArgs>('/search-user');

  static const userProfile = PageRoute<UserProfileArgs>('/user-profile');

  static Map<String, WidgetBuilder> get builders => {
        splash.path: (_) => SplashPage(),
        searchUser.path: (_) => SearchUserPage(),
        userProfile.path: (context) {
          return UserProfilePage(args: _argumentsOf(context));
        },
      };

  static T _argumentsOf<T>(context) {
    return ModalRoute.of(context)!.settings.arguments as T;
  }
}
