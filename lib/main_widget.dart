import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/route/go_router_provider.dart';
import 'package:todo_app/core/service_locator.dart';
import 'package:todo_app/features/setting/presentation/controller/setting_controller.dart';
import 'package:todo_app/features/todo/presentation/controller/todo_controller.dart';

import 'core/theme/color_scheme.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final route = getIt.get<GoRouterProvider>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<ToDoController>()),
        BlocProvider(create: (context) => getIt.get<SettingController>()),
      ],
      child: MaterialApp.router(
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
      ),
    );
  }
}
