// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingState _$$_SettingStateFromJson(Map<String, dynamic> json) =>
    _$_SettingState(
      appTheme: $enumDecodeNullable(_$AppThemeEnumMap, json['appTheme']) ??
          AppTheme.light,
    );

Map<String, dynamic> _$$_SettingStateToJson(_$_SettingState instance) =>
    <String, dynamic>{
      'appTheme': _$AppThemeEnumMap[instance.appTheme]!,
    };

const _$AppThemeEnumMap = {
  AppTheme.light: 'light',
  AppTheme.dark: 'dark',
};
