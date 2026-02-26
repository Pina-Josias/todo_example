// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getTodos)
final getTodosProvider = GetTodosProvider._();

final class GetTodosProvider
    extends $FunctionalProvider<GetTodos, GetTodos, GetTodos>
    with $Provider<GetTodos> {
  GetTodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTodosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTodosHash();

  @$internal
  @override
  $ProviderElement<GetTodos> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetTodos create(Ref ref) {
    return getTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTodos value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTodos>(value),
    );
  }
}

String _$getTodosHash() => r'67b3009905a1e7a6fdea11647533d593578560c3';

@ProviderFor(saveTodos)
final saveTodosProvider = SaveTodosProvider._();

final class SaveTodosProvider
    extends $FunctionalProvider<SaveTodo, SaveTodo, SaveTodo>
    with $Provider<SaveTodo> {
  SaveTodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveTodosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveTodosHash();

  @$internal
  @override
  $ProviderElement<SaveTodo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SaveTodo create(Ref ref) {
    return saveTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SaveTodo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SaveTodo>(value),
    );
  }
}

String _$saveTodosHash() => r'cfad9564a51beb9944c19eeeb847aae136a71ece';

@ProviderFor(deleteTodos)
final deleteTodosProvider = DeleteTodosProvider._();

final class DeleteTodosProvider
    extends $FunctionalProvider<DeleteTodo, DeleteTodo, DeleteTodo>
    with $Provider<DeleteTodo> {
  DeleteTodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteTodosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteTodosHash();

  @$internal
  @override
  $ProviderElement<DeleteTodo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeleteTodo create(Ref ref) {
    return deleteTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteTodo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteTodo>(value),
    );
  }
}

String _$deleteTodosHash() => r'42530c28f3beb3479a8e21e7fc7ed153fe849a0c';

@ProviderFor(updateTodos)
final updateTodosProvider = UpdateTodosProvider._();

final class UpdateTodosProvider
    extends $FunctionalProvider<UpdateTodo, UpdateTodo, UpdateTodo>
    with $Provider<UpdateTodo> {
  UpdateTodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateTodosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateTodosHash();

  @$internal
  @override
  $ProviderElement<UpdateTodo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UpdateTodo create(Ref ref) {
    return updateTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateTodo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateTodo>(value),
    );
  }
}

String _$updateTodosHash() => r'22fef15c79aa26f5aa48c4bf0b29be82c255829b';

@ProviderFor(todosRepository)
final todosRepositoryProvider = TodosRepositoryProvider._();

final class TodosRepositoryProvider
    extends $FunctionalProvider<TodoRepository, TodoRepository, TodoRepository>
    with $Provider<TodoRepository> {
  TodosRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todosRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todosRepositoryHash();

  @$internal
  @override
  $ProviderElement<TodoRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TodoRepository create(Ref ref) {
    return todosRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoRepository>(value),
    );
  }
}

String _$todosRepositoryHash() => r'414f6eba169f699fc1d16b8165a6a5dd729e81e0';

@ProviderFor(dataSource)
final dataSourceProvider = DataSourceProvider._();

final class DataSourceProvider
    extends $FunctionalProvider<TodoDatasource, TodoDatasource, TodoDatasource>
    with $Provider<TodoDatasource> {
  DataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dataSourceHash();

  @$internal
  @override
  $ProviderElement<TodoDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TodoDatasource create(Ref ref) {
    return dataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoDatasource>(value),
    );
  }
}

String _$dataSourceHash() => r'1b2da77f4e7c12f46a085d2c5911e91a1c357499';

@ProviderFor(DatasouceTypeNotifier)
final datasouceTypeProvider = DatasouceTypeNotifierProvider._();

final class DatasouceTypeNotifierProvider
    extends $NotifierProvider<DatasouceTypeNotifier, DataSourceType> {
  DatasouceTypeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'datasouceTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$datasouceTypeNotifierHash();

  @$internal
  @override
  DatasouceTypeNotifier create() => DatasouceTypeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DataSourceType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DataSourceType>(value),
    );
  }
}

String _$datasouceTypeNotifierHash() =>
    r'cf2c299cc8aa26d444bf081e569c2fc062760703';

abstract class _$DatasouceTypeNotifier extends $Notifier<DataSourceType> {
  DataSourceType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DataSourceType, DataSourceType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DataSourceType, DataSourceType>,
              DataSourceType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TodosNotifier)
final todosProvider = TodosNotifierProvider._();

final class TodosNotifierProvider
    extends $AsyncNotifierProvider<TodosNotifier, List<Todo>> {
  TodosNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todosNotifierHash();

  @$internal
  @override
  TodosNotifier create() => TodosNotifier();
}

String _$todosNotifierHash() => r'ba7ee050ba7fc34942e7fbb81992d5af26d76cec';

abstract class _$TodosNotifier extends $AsyncNotifier<List<Todo>> {
  FutureOr<List<Todo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Todo>>, List<Todo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Todo>>, List<Todo>>,
              AsyncValue<List<Todo>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
