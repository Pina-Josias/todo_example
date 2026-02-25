import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, void>> saveTodo(Todo todo);
  Future<Either<Failure, List<Todo>>> getTodoList();
  Future<Either<Failure, void>> updateTodo(Todo todo);
  Future<Either<Failure, void>> deleteTodo(String uuid);
}
