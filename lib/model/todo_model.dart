class Todo {
  int? id;
  String task;

  Todo({
    this.id,
    required this.task,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'task': task,
    };
  }
}
