import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/interface/todo_local_datasource.dart';
import 'package:todo_list_example/src/features/todos/data/models/todo_model.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';

final class TodoLocalFStorageDatasourceImpl implements TodoDatasource {
  TodoLocalFStorageDatasourceImpl({required this.storage});

  final FlutterSecureStorage storage;

  @override
  Future<void> deleteTodo(String uuid) async {
    await storage.delete(key: uuid);
  }

  @override
  Future<List<Todo>> getTodoList() async {
    final allTodos = await storage.readAll();
    return allTodos.values
        .map<Todo>((String e) => TodoModel.fromJsonString(e).toEntity())
        .toList();
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    await storage.write(
      key: todo.uuid,
      value: TodoModel.fromEntity(todo).toJsonString(),
    );
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    await saveTodo(todo);
  }
}
