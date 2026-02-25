import 'package:hive/hive.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/interface/todo_local_datasource.dart';
import 'package:todo_list_example/src/features/todos/data/models/todo_model.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';

final class TodoLocalHiveDatasourceImpl implements TodoDatasource {
  TodoLocalHiveDatasourceImpl({required this.storage});

  final Box<String> storage;

  @override
  Future<void> deleteTodo(String uuid) async {
    await storage.delete(uuid);
  }

  @override
  Future<List<Todo>> getTodoList() async {
    return storage.values
        .map<Todo>((String e) => TodoModel.fromJsonString(e).toEntity())
        .toList();
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    await storage.put(todo.uuid, TodoModel.fromEntity(todo).toJsonString());
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    await storage.put(todo.uuid, TodoModel.fromEntity(todo).toJsonString());
  }
}
