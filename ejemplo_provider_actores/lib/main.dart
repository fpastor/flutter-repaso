import 'package:ejemplo_provider_actores/provider/actor_provider.dart';
import 'package:ejemplo_provider_actores/widgets/actor_add.dart';
import 'package:ejemplo_provider_actores/widgets/actor_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ActorProvider(), child: const MainApp()));
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
          title: <Widget>[const Text("List"), const Text("Add")][currentIndex],
        ),
        body: <Widget>[const ActorList(), ActorAdd()][currentIndex],
        bottomNavigationBar: NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            destinations: const <Widget>[
              NavigationDestination(icon: Icon(Icons.list), label: "List"),
              NavigationDestination(icon: Icon(Icons.add), label: "Add")
            ]),
      ),
    );
  }
}
