import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';

class TodosDatabaseOptionButton extends ConsumerWidget {
  const TodosDatabaseOptionButton({
    required this.unselectedIcon,
    required this.selectedIcon,
    required this.dataSourceType,
    super.key,
  });

  final IconData unselectedIcon;
  final IconData selectedIcon;
  final DataSourceType dataSourceType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(
      datasouceTypeProvider.select(
        (state) => state == dataSourceType,
      ),
    );

    return IconButton(
      icon: Icon(
        unselectedIcon,
      ),
      selectedIcon: Icon(
        selectedIcon,
        color: Colors.blue,
      ),
      isSelected: isSelected,
      onPressed: () {
        unawaited(
          ref.read(todosProvider.notifier).updateDataStore(dataSourceType),
        );
      },
    );
  }
}
