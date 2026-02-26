import 'package:flutter/material.dart';
import 'package:todo_list_example/src/features/todos/presentation/providers/todos_providers.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_add_button.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_database_option_button.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_list_item.dart';
import 'package:todo_list_example/src/features/todos/presentation/widgets/todos_title.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TodosTitle(),
        actions: const [
          TodosDatabaseOptionButton(
            dataSourceType: DataSourceType.hive,
            unselectedIcon: Icons.hive_outlined,
            selectedIcon: Icons.hive,
          ),
          TodosDatabaseOptionButton(
            dataSourceType: DataSourceType.flutterSecureStorage,
            unselectedIcon: Icons.security,
            selectedIcon: Icons.security_outlined,
          ),
        ],
      ),
      body: const TodosListItem(),
      floatingActionButton: const TodosAddButton(),
    );
  }
}
