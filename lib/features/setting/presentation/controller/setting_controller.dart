import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:todo_app/common/enum/app_theme.dart';
import 'package:todo_app/features/setting/presentation/state/setting_state.dart';

class SettingController extends Cubit<SettingState> with HydratedMixin {
  SettingController() : super(const SettingState());

  void setAppTheme() {
    emit(state.copyWith(
        appTheme:
            state.appTheme == AppTheme.dark ? AppTheme.light : AppTheme.dark));
  }

  @override
  SettingState? fromJson(Map<String, dynamic> json) {
    return SettingState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SettingState state) {
    return state.toJson();
  }
}
