import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'routes/routes.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Github Profile',
        debugShowCheckedModeBanner: false,
        theme: theme,
        routes: AppRoutes.builders,
      ),
    );
  }
}
