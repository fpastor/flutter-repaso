import 'package:flutter/material.dart';
import 'package:flutter_repaso_2/add.dart';
import 'package:flutter_repaso_2/gasto_provider.dart';
import 'package:flutter_repaso_2/list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => GastoProvider(), child: const MainApp()));
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Scaffold(
            appBar: AppBar(
              title: <Widget>[
                const Text("List"),
                const Text("Add")
              ][currentIndex],
              centerTitle: true,
            ),
            body: <Widget>[const List(), Add()][currentIndex],
            bottomNavigationBar: NavigationBar(
                onDestinationSelected: (int index) => {
                      setState(() {
                        currentIndex = index;
                      })
                    },
                selectedIndex: currentIndex,
                destinations: const <Widget>[
                  NavigationDestination(icon: Icon(Icons.list), label: "List"),
                  NavigationDestination(icon: Icon(Icons.add), label: "Add"),
                ]),
          ),
        ),
      ),
    );
  }
}
