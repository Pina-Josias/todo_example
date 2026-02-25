class Todo {
  Todo({
    required this.uuid,
    required this.title,
    required this.isCompleted,
  });

  final String uuid;
  final String title;
  final bool isCompleted;

  Todo copyWith({
    String? uuid,
    String? title,
    bool? isCompleted,
  }) {
    return Todo(
      uuid: uuid ?? this.uuid,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
