import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';
import 'package:todo_list_example/src/core/usecases/usecase.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/domain/repositories/todo_repository.dart';

final class SaveTodo implements Usecase<Todo, void> {
  SaveTodo({required this.repository});

  final TodoRepository repository;

  @override
  Future<Either<Failure, void>> call(Todo params) async {
    return repository.saveTodo(params);
  }
}
