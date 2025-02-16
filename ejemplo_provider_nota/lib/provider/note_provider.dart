import 'package:ejemplo_provider_nota/note.dart';
import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _noteList = [
    Note("First Note", "Text from de first note"),
    Note("Second Note", "Text from de first note")
  ];

  int getNoteLenght() {
    return _noteList.length;
  }

  void addNote(Note note) {
    _noteList.add(note);
    notifyListeners();
  }

  Note getNoteAt(int index) {
    return _noteList[index];
  }

  void removeNoteAt(int index) {
    _noteList.removeAt(index);
    notifyListeners();
  }
}
