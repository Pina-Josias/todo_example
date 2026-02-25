import 'package:flutter/material.dart';
import 'package:todo_list_example/src/features/todos/domain/entities/todo.dart';
import 'package:uuid/uuid.dart';

class TodosAddPopup extends StatefulWidget {
  const TodosAddPopup({super.key});

  @override
  State<TodosAddPopup> createState() => _TodosAddPopupState();
}

class _TodosAddPopupState extends State<TodosAddPopup> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Add Todo'),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Todo Title',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_controller.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a todo title'),
                      ),
                    );
                    return;
                  }
                  final newTodo = Todo(
                    uuid: const Uuid().v4(),
                    title: _controller.text,
                    isCompleted: false,
                  );
                  Navigator.of(context).pop(newTodo);
                },
                child: const Text('Add Todo'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
