import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/common/enum/app_theme.dart';
import 'package:todo_app/features/setting/presentation/controller/setting_controller.dart';
import 'package:todo_app/features/setting/presentation/state/setting_state.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<SettingController, SettingState>(
            builder: (context, state) {
              return SwitchListTile.adaptive(
                title: Text('Theme : (${state.appTheme.name.toUpperCase()})'),
                value: state.appTheme == AppTheme.dark ? true : false,
                onChanged: (value) {
                  context.read<SettingController>().setAppTheme();
                },
              );
            },
          )
        ],
      ),
    );
  }
}
