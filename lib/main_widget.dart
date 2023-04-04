import 'package:flutter/material.dart';
import 'package:todo_app/core/route/go_router_provider.dart';

import 'core/theme/color_scheme.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final route = GoRouterProvider();

    return MaterialApp.router(
      title: 'Todo App',
      routerConfig: route.goRouter(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
    );
  }
}

