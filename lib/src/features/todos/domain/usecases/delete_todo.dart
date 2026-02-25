import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';
import 'package:todo_list_example/src/core/usecases/usecase.dart';
import 'package:todo_list_example/src/features/todos/domain/repositories/todo_repository.dart';

final class DeleteTodo implements Usecase<String, void> {
  DeleteTodo({required this.repository});

  final TodoRepository repository;

  @override
  Future<Either<Failure, void>> call(String params) async {
    return repository.deleteTodo(params);
  }
}
