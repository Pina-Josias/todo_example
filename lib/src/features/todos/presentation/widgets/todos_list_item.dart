import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';

class TodosListItem extends ConsumerWidget {
  const TodosListItem({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todosProvider);
    return state.when(
      loading: () => const CircularProgressIndicator(),
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Dismissible(
            key: Key(data[index].uuid),
            background: const ColoredBox(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.delete, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.delete, color: Colors.white),
                ],
              ),
            ),
            onDismissed: (direction) {
              unawaited(
                ref.read(todosProvider.notifier).deleteTodo(data[index].uuid),
              );
            },
            child: ListTile(
              title: Text(data[index].title),
              trailing: Checkbox(
                value: data[index].isCompleted,
                onChanged: (value) {
                  final newTodo = data[index].copyWith(isCompleted: value);
                  unawaited(
                    ref.read(todosProvider.notifier).updateTodo(newTodo),
                  );
                },
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}
