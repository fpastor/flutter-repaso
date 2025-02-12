import 'package:flutter/material.dart';
import 'package:flutter_repaso_app/widgets/add.dart';
import 'package:flutter_repaso_app/provider/item_provider.dart';
import 'package:flutter_repaso_app/widgets/list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ItemProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexActual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: <Widget>[
          const Text("List"),
          const Text("Add"),
        ][indexActual],
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              indexActual = index;
            });
          },
          selectedIndex: indexActual,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.list), label: "List"),
            NavigationDestination(icon: Icon(Icons.add), label: "Add"),
          ]),
      body: <Widget>[const List(), Add()][indexActual],
    );
  }
}
