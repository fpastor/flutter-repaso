import 'package:ejemplo_provider_nota/note.dart';
import 'package:ejemplo_provider_nota/provider/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoteAdd extends StatelessWidget {
  NoteAdd({
    super.key,
  });

  final titleController = TextEditingController();
  final textController = TextEditingController();

  get child => null;

  @override
  Widget build(BuildContext context) {
    final noteList = context.watch<NoteProvider>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title")),
          const SizedBox(
            height: 20,
          ),
          TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: "Text")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => {
                    noteList.addNote(
                        Note(titleController.text, textController.text))
                  },
              child: const Text("Add note"))
        ],
      ),
    );
  }
}
