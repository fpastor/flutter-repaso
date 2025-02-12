import 'package:flutter/material.dart';
import 'package:flutter_repaso_app/item_provider.dart';
import 'package:provider/provider.dart';

class List extends StatelessWidget {
  const List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = context.watch<ItemProvider>().items;
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items.elementAt(index)),
            trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  context.read<ItemProvider>().removeItem(index);
                }),
          );
        });
  }
}
