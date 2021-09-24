import 'package:flutter/material.dart';

import '../../pages/repo_contributors/repo_contributors_page.dart';
import '../../pages/search_user/search_user_page.dart';
import '../../pages/splash/splash_page.dart';
import '../../pages/user_profile/user_profile_page.dart';
import 'args/repo_contributors_args.dart';
import 'args/user_profile_args.dart';

part 'page_route.dart';

abstract class AppRoutes {
  static const splash = PageRoute<NoArgs>('/');

  static const searchUser = PageRoute<NoArgs>('/search-user');

  static const userProfile = PageRoute<UserProfileArgs>('/user-profile');

  static const repoContributors =
      PageRoute<RepoContributorsArgs>('/repo-contributors');

  static Map<String, WidgetBuilder> get builders => {
        splash.path: (_) => SplashPage(),
        searchUser.path: (_) => SearchUserPage(),
        repoContributors.path: (context) {
          return RepoContributorsPage(args: _argumentsOf(context));
        },
        userProfile.path: (context) {
          return UserProfilePage(args: _argumentsOf(context));
        },
      };

  static T _argumentsOf<T>(context) {
    return ModalRoute.of(context)!.settings.arguments as T;
  }
}
