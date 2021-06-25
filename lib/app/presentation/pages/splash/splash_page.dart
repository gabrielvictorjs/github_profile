import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/routes/routes.dart';
import '../../shared/widgets/github_logo_widget.dart';

class SplashPage extends HookWidget {
  SplashPage({Key? key}) : super(key: key);

  void _redirectToSearchUser(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      AppRoutes.searchUser.pushReplacement(context, arguments: noArgs);
    });
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _redirectToSearchUser(context);
      return () {};
    }, []);

    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'github-logo',
          child: GithubLogoWidget(),
        ),
      ),
    );
  }
}
