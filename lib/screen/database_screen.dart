import 'package:flutter/material.dart';
import 'package:networking_and_database/database/database.dart';
import 'package:networking_and_database/model/todo_model.dart';

class DataBaseScreen extends StatefulWidget {
  @override
  _DataBaseScreenState createState() => _DataBaseScreenState();
}

class _DataBaseScreenState extends State<DataBaseScreen> {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  final TextEditingController _controller = TextEditingController();
  List<Todo> _todos = [];

  @override
  void initState() {
    super.initState();
    _loadTodos();
  }

  void _loadTodos() async {
    List<Todo> todos = await _databaseHelper.getTodos();
    setState(() {
      _todos = todos;
    });
  }

  void _addTodo() async {
    String task = _controller.text.trim();
    if (task.isNotEmpty) {
      Todo newTodo = Todo(task: task);
      await _databaseHelper.insertTodo(newTodo);
      _controller.clear();
      _loadTodos();
      print('Todo added successfully!');
    } else {
      print('Task is empty. Todo not added.');
    }
  }

  void _deleteTodo(int id) async {
    await _databaseHelper.deleteTodo(id);
    _loadTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO App'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index].task),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                _deleteTodo(_todos[index].id!);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add Todo'),
                content: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(hintText: 'Enter your task'),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      _addTodo();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
