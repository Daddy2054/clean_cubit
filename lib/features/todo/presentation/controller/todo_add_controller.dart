import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/exception/failure.dart';
import 'package:todo_app/features/todo/application/itodo_service.dart';
import 'package:todo_app/features/todo/presentation/state/todo_add_state.dart';

class ToDoAddController extends Cubit<ToDoAddState> {
  final IToDoService _iToDoService;

  ToDoAddController(this._iToDoService) : super(const ToDoAddState());

  void addToDo() async {
    try {
      emit(state.copyWith(isLoading: true));
      final result = await _iToDoService.addToDo(
        state.formData,
      );

      _setIsAdded(result.id >= 1);
    } on Failure catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMsg: e.message,
      ));
    }
  }

  void setToDoStatus(bool value) {
    emit(state.copyWith(
      todoStatus: value,
    ));
    setFormData(
      key: 'status',
      value: value ? '1' : '0',
    );
  }

  void setFormData({required String key, required dynamic value}) {
    state.copyWith(formData: {
      ...state.formData,
      ...{key: value}
    });
  }

  void _setIsAdded(bool value) {
    emit(state.copyWith(
      isLoading: false,
      isAdded: value,
    ));
  }

  void clearState() {
    emit(state.copyWith(
      isAdded: false,
      isLoading: false,
      todoStatus: false,
      formData: {},
    ));
  }
}
