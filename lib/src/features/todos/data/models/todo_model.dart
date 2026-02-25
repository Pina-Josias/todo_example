import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';

part 'todo_model.g.dart';
part 'todo_model.freezed.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String uuid,
    required String title,
    required bool isCompleted,
  }) = _TodoModel;

  const TodoModel._();

  factory TodoModel.fromEntity(Todo todo) {
    return TodoModel(
      uuid: todo.uuid,
      title: todo.title,
      isCompleted: todo.isCompleted,
    );
  }

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  factory TodoModel.fromJsonString(String source) =>
      _$TodoModelFromJson(json.decode(source) as Map<String, dynamic>);

  Todo toEntity() {
    return Todo(
      uuid: uuid,
      title: title,
      isCompleted: isCompleted,
    );
  }

  String toJsonString() => json.encode(toJson());
}
