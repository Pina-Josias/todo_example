import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_add_popup.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_list_item.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            final databaseName = ref.watch(dataSouceType);
            return Text('Todo List: ${databaseName.name}');
          },
        ),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final isSelected = ref.watch(
                dataSouceType.select(
                  (state) => state == DataSourceType.hive,
                ),
              );

              return IconButton(
                icon: Icon(
                  isSelected ? Icons.hive_outlined : Icons.hive,
                  color: isSelected ? Colors.blue : null,
                ),
                selectedIcon: const Icon(
                  Icons.hive_outlined,
                  color: Colors.blue,
                ),
                isSelected: isSelected,
                onPressed: () {
                  unawaited(
                    ref
                        .read(todosProvider.notifier)
                        .updateDataStore(DataSourceType.hive),
                  );
                },
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final isSelected = ref.watch(
                dataSouceType.select(
                  (state) => state == DataSourceType.flutterSecureStorage,
                ),
              );

              return IconButton(
                icon: Icon(
                  isSelected ? Icons.security_outlined : Icons.security,
                  color: isSelected ? Colors.blue : null,
                ),
                onPressed: () {
                  unawaited(
                    ref
                        .read(todosProvider.notifier)
                        .updateDataStore(DataSourceType.flutterSecureStorage),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: const TodosListItem(),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () async {
              final newTodo = await showDialog<Todo>(
                context: context,
                builder: (context) => const TodosAddPopup(),
              );
              if (newTodo == null) return;
              unawaited(
                ref
                    .read(todosProvider.notifier)
                    .addTodo(
                      newTodo,
                    ),
              );
            },
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
