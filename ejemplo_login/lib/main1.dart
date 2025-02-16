import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20.0), // Espacio dentro de la caja
              decoration: BoxDecoration(
                color: Colors.white, // Fondo de la caja
                borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Sombra suave
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5), // Dirección de la sombra
                  ),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          label: Text("Usuario"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => {},
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                        color: Colors.blue),
                                    elevation: 0,
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blue),
                                child: const Text("Iniciar Sesión"))),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => {},
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                        color: Colors.grey),
                                    elevation: 0,
                                    foregroundColor: Colors.grey,
                                    backgroundColor: Colors.white),
                                child: const Text("Cancelar")))
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
