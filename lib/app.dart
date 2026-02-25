import 'package:flutter/material.dart';
import 'package:todo_list_example/src/features/todos/presentation/screens/todos_screen.dart';

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodosScreen(),
    );
  }
}
