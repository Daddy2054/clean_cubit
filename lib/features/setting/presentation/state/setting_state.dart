

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/common/enum/app_theme.dart';

part 'setting_state.freezed.dart';
part 'setting_state.g.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(AppTheme.light)AppTheme appTheme,
  })=_SettingState;

  factory SettingState.fromJson(Map<String,dynamic> json) => _$SettingStateFromJson(json);
}