import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';
part 'todo_item.g.dart';

@freezed
class ToDoItem with _$ToDoItem {
  const factory ToDoItem({
    @Default(0) final int id,
    @Default(0) final int userId,
    @Default('') final String title,
    @Default('') final String body,
    @Default('') final String note,
    @Default(false) final bool status,
    @Default('') final String updatedAt,
    @Default('') final String createdAt,
  }) = _ToDoItem;

  factory ToDoItem.fromJson(Map<String, dynamic> json) =>
      _$ToDoItemFromJson(json);
}
