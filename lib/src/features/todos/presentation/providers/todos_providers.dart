import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_list_example/src/core/usecases/usecase.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/interface/todo_local_datasource.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/todo_local_fstorage_datasource_impl.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/todo_local_hive_datasource_impl.dart';
import 'package:todo_list_example/src/features/todos/data/repositories/todo_repository_impl.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/domain/repositories/todo_repository.dart';
import 'package:todo_list_example/src/features/todos/domain/usecases/delete_todo.dart';
import 'package:todo_list_example/src/features/todos/domain/usecases/get_todos.dart';
import 'package:todo_list_example/src/features/todos/domain/usecases/save_todo.dart';
import 'package:todo_list_example/src/features/todos/domain/usecases/update_todo.dart';

part 'todos_providers.g.dart';

// * Providers

// * Register Use Cases
final getTodosProvider = Provider<GetTodos>(
  (ref) => GetTodos(
    repository: ref.watch(todosRepositoryProvider),
  ),
);

final saveTodosProvider = Provider<SaveTodo>(
  (ref) => SaveTodo(
    repository: ref.watch(todosRepositoryProvider),
  ),
);

final deleteTodoProvider = Provider<DeleteTodo>(
  (ref) => DeleteTodo(
    repository: ref.watch(todosRepositoryProvider),
  ),
);

final updateTodoProvider = Provider<UpdateTodo>(
  (ref) => UpdateTodo(
    repository: ref.watch(todosRepositoryProvider),
  ),
);

// * Repository Provider
final todosRepositoryProvider = Provider<TodoRepository>((ref) {
  return TodoRepositoryImpl(localDatasource: ref.watch(dataSourceProvider));
});

// * Data Source Provider
final dataSourceProvider = Provider<TodoDatasource>((ref) {
  final dataSourceType = ref.watch(dataSouceType);

  switch (dataSourceType) {
    case DataSourceType.flutterSecureStorage:
      return GetIt.instance<TodoLocalFStorageDatasourceImpl>();
    case DataSourceType.hive:
      return GetIt.instance<TodoLocalHiveDatasourceImpl>();
  }
});

// * Data Source Type Provider
enum DataSourceType { flutterSecureStorage, hive }

final dataSouceType = NotifierProvider<DatasouceTypeNotifier, DataSourceType>(
  DatasouceTypeNotifier.new,
);

class DatasouceTypeNotifier extends Notifier<DataSourceType> {
  bool get isHive => state == DataSourceType.hive;

  bool get isFlutterSecureStorage =>
      state == DataSourceType.flutterSecureStorage;

  @override
  DataSourceType build() {
    return DataSourceType.hive;
  }
}

// * ViewModel Provider
@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  FutureOr<List<Todo>> build() async {
    return _fetchTodos();
  }

  Future<List<Todo>> _fetchTodos() async {
    final getTodosUseCase = ref.watch(getTodosProvider);

    final result = await getTodosUseCase(NoParams());

    return result.fold(
      (failure) => throw Exception(failure),
      (todos) => todos,
    );
  }

  Future<void> addTodo(Todo todo) async {
    final saveTodoUseCase = ref.read(saveTodosProvider);

    final result = await saveTodoUseCase(todo);

    result.fold(
      (failure) => throw Exception(failure),
      (success) => state = AsyncValue.data([...state.value ?? [], todo]),
    );
  }

  Future<void> deleteTodo(String uuid) async {
    final deleteTodoUseCase = ref.read(deleteTodoProvider);

    final result = await deleteTodoUseCase(uuid);

    result.fold(
      (failure) => throw Exception(failure),
      (success) => state = AsyncValue.data(
        state.value?.where((todo) => todo.uuid != uuid).toList() ?? [],
      ),
    );
  }

  Future<void> updateTodo(Todo updatedTodo) async {
    final updateTodoUseCase = ref.read(updateTodoProvider);

    final result = await updateTodoUseCase(updatedTodo);

    result.fold(
      (failure) => throw Exception(failure),
      (success) => state = AsyncValue.data(
        state.value
                ?.map(
                  (todo) => todo.uuid == updatedTodo.uuid ? updatedTodo : todo,
                )
                .toList() ??
            [],
      ),
    );
  }

  Future<void> refreshTodos() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetchTodos);
  }

  Future<void> updateDataStore(DataSourceType newType) async {
    final currentType = ref.read(dataSouceType);

    if (currentType != newType) {
      // Update the data source type
      ref.read(dataSouceType.notifier).state = newType;

      // Refresh the todos to fetch from the new data source
      await refreshTodos();
    }
  }
}
