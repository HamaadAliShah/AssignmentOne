import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({super.key});

  @override
  State<SetStateScreen> createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  List<TodoItem> items = [];
  TextEditingController textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Set State Screen"),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: textEditingController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Add items to list',
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_formKey.currentState!.validate()) {
                  items.add(TodoItem(
                    title: textEditingController.text,
                    isCompleted: false,
                  ));
                  textEditingController.clear();
                }
              });
            },
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.green),
            ),
          ),
          items.isEmpty
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("List is empty"),
                )
              : Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: Colors.green,
                          title: Text(items[index].title),
                          leading: Checkbox(
                            checkColor: Colors.blue,
                            activeColor: Colors.white,
                            value: items[index].isCompleted,
                            onChanged: (bool? value) {
                              setState(() {
                                items[index].isCompleted = value!;
                              });
                            },
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  items.removeAt(index);
                                });
                              },
                              icon: const Icon(Icons.delete)),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({required this.title, required this.isCompleted});
}
