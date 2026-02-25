import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';

abstract class TodoDatasource {
  Future<void> saveTodo(Todo todo);
  Future<List<Todo>> getTodoList();
  Future<void> updateTodo(Todo todo);
  Future<void> deleteTodo(String uuid);
}
