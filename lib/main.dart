import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_example/app.dart';
import 'package:todo_list_example/src/core/di/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(
    const ProviderScope(
      child: TodoListApp(),
    ),
  );
}
