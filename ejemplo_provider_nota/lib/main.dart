import 'package:ejemplo_provider_nota/widgets/note_list.dart';
import 'package:ejemplo_provider_nota/provider/note_provider.dart';
import 'package:ejemplo_provider_nota/widgets/note_add.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => NoteProvider(), child: const MainApp()));
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
        body: <Widget>[const NoteList(), NoteAdd()][currentIndex],
        appBar: AppBar(
          centerTitle: true,
          title: <Widget>[const Text("List"), const Text("Add")][currentIndex],
        ),
        bottomNavigationBar: NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: (int index) => {
                  setState(() {
                    currentIndex = index;
                  })
                },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.list), label: "Lista"),
              NavigationDestination(icon: Icon(Icons.add), label: "Add")
            ]),
      ),
    );
  }
}
