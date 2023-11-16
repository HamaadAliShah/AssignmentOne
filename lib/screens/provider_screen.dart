import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stste_management_task/provider/provider_data.dart';

class ProviderScreen extends StatelessWidget {
  ProviderScreen({super.key});

  TextEditingController textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderData>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Provider Screen"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
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
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  provider.addItem(textEditingController.text);
                  textEditingController.clear();
                }
              },
              child: const Text(
                "Add",
                style: TextStyle(color: Colors.green),
              ),
            ),
            provider.items.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("List is empty"),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: provider.items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: Colors.green,
                          title: Text(provider.items[index].title),
                          leading: Checkbox(
                            checkColor: Colors.blue,
                            activeColor: Colors.white,
                            value: provider.items[index].isCompleted,
                            onChanged: (bool? value) {
                              provider.changeCheckbox(index, value!);
                            },
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                provider.deleteItem(index);
                              },
                              icon: const Icon(Icons.delete)),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
