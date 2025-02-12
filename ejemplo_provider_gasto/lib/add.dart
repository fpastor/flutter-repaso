import 'package:flutter/material.dart';
import 'package:flutter_repaso_2/gasto.dart';
import 'package:flutter_repaso_2/gasto_provider.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  Add({
    super.key,
  });

  final nombreGastoController = TextEditingController();
  final importeGastoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: nombreGastoController,
            decoration: const InputDecoration(labelText: "Gasto"),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: importeGastoController,
            decoration: const InputDecoration(labelText: "Importe"),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () => {
                    context.read<GastoProvider>().addGasto(Gasto(
                        nombreGastoController.text,
                        int.parse(importeGastoController.text)))
                  },
              child: const Text("Añadir gasto"))
        ],
      ),
    );
  }
}
