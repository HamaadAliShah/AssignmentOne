import 'package:flutter/material.dart';
import 'package:stste_management_task/screens/set_state_screen.dart';

class ProviderData extends ChangeNotifier {
  List<TodoItem> items = [];
  bool isComplete = false;

  void addItem(String text) {
    items.add(TodoItem(
      title: text,
      isCompleted: false,
    ));
    notifyListeners();
  }

  void changeCheckbox(int index, bool change) {
    items[index].isCompleted = change;
    notifyListeners();
  }

  void deleteItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
