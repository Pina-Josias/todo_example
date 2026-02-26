import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';

class TodosTitle extends ConsumerWidget {
  const TodosTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final databaseName = ref.watch(datasouceTypeProvider);
    return Text('Todo List: ${databaseName.name}');
  }
}
