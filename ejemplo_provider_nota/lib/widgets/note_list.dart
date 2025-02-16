import 'package:ejemplo_provider_nota/provider/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoteList extends StatelessWidget {
  const NoteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final noteList = context.watch<NoteProvider>();

    return ListView.builder(
        itemCount: noteList.getNoteLenght(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => {noteList.removeNoteAt(index)},
                    icon: const Icon(Icons.delete)),
                Text(noteList.getNoteAt(index).title),
                const Text(": "),
                Text(noteList.getNoteAt(index).text)
              ],
            ),
          );
        });
  }
}
