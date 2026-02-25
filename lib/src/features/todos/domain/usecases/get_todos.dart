import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';
import 'package:todo_list_example/src/core/usecases/usecase.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/domain/repositories/todo_repository.dart';

final class GetTodos implements Usecase<NoParams, List<Todo>> {
  GetTodos({required this.repository});

  final TodoRepository repository;

  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) async {
    return repository.getTodoList();
  }
}
