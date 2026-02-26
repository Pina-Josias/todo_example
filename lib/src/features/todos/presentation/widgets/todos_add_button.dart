import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_add_popup.dart';

class TodosAddButton extends ConsumerWidget {
  const TodosAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
  }
}
