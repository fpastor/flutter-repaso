import 'package:flutter/material.dart';
import 'package:ejemplo_provider_book/widgets/book.dart';

class BookProvider extends ChangeNotifier {
  final List<Book> _bookList = [
    Book("Wicked", "Gregory McGuire",
        "https://m.media-amazon.com/images/I/917dS7ixe6L._SL1500_.jpg"),
    Book("Son of a Witch", "Gregory McGuire",
        "https://m.media-amazon.com/images/I/91PpH1u0epL._AC_UF1000,1000_QL80_.jpg"),
    Book("A Lion Among Men", "Gregory McGuire",
        "https://m.media-amazon.com/images/I/51ZOj6yorOL._AC_UF1000,1000_QL80_.jpg"),
    Book("Out of Oz", "Gregory McGuire",
        "https://m.media-amazon.com/images/I/51ueJa7z5KL.jpg"),
  ];

  int getBookListLenght() {
    return _bookList.length;
  }

  Book getBookAt(index) {
    return _bookList[index];
  }

  void removeBookAt(int index) {
    _bookList.removeAt(index);
    notifyListeners();
  }

  void addBook(Book book) {
    _bookList.add(book);
    notifyListeners();
  }
}
