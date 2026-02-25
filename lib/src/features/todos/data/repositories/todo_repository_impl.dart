import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/interface/todo_local_datasource.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/domain/repositories/todo_repository.dart';

final class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({required this.localDatasource});

  final TodoDatasource localDatasource;

  @override
  Future<Either<Failure, void>> deleteTodo(String uuid) async {
    try {
      await localDatasource.deleteTodo(uuid);
      return const Right(null);
    } on Exception catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getTodoList() async {
    try {
      final todos = await localDatasource.getTodoList();
      return Right(todos);
    } on Exception catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTodo(Todo todo) async {
    try {
      await localDatasource.saveTodo(todo);
      return const Right(null);
    } on Exception catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateTodo(Todo todo) async {
    try {
      await localDatasource.updateTodo(todo);
      return const Right(null);
    } on Exception catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }
}
