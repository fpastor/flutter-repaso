import 'package:flutter/material.dart';
import 'package:flutter_repaso_app/provider/item_provider.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  Add({
    super.key,
  });

  final itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: itemController,
            decoration: const InputDecoration(
              labelText: "Type something",
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                context.read<ItemProvider>().addItem(itemController.text);
                itemController.clear();
              },
              child: const Text("Add something"))
        ],
      ),
    );
  }
}
