import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  List<String> items = ["Item 1", "Item 2", "Item 3"];

  void addItem(String item) {
    items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
