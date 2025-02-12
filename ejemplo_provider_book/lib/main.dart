import 'package:flutter/material.dart';
import 'package:ejemplo_provider_book/provider/book_provider.dart';
import 'package:ejemplo_provider_book/widgets/book_add.dart';
import 'package:ejemplo_provider_book/widgets/book_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => BookProvider(), child: const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: <Widget>[
              const Text("Book List"),
              const Text("Book Add")
            ][currentIndex]),
        body: <Widget>[const BookList(), BookAdd()][currentIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIndex: currentIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.book_outlined),
              label: 'List Books',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.add_outlined),
              icon: Icon(Icons.add),
              label: 'Add Book',
            ),
          ],
        ),
      ),
    );
  }
}
