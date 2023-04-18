import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_app/core/service_locator.dart';
import 'package:todo_app/main_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init the Hydratedbloc
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory());
  serviceLocatorInit();
  runApp(const MainWidget());
}
