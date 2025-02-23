import 'package:flutter/material.dart';
import 'package:flutter_repaso_2/provider/gasto_provider.dart';
import 'package:provider/provider.dart';

class List extends StatelessWidget {
  const List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = context.watch<GastoProvider>();

    return ListView.builder(
        itemCount: items.gastos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items.gastos[index].name),
            trailing: IconButton(
                onPressed: () =>
                    {context.read<GastoProvider>().removeItemAt(index)},
                icon: const Icon(Icons.delete)),
          );
        });
  }
}
