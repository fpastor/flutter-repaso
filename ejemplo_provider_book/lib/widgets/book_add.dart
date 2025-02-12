import 'package:flutter/material.dart';
import 'package:ejemplo_provider_book/provider/book_provider.dart';
import 'package:ejemplo_provider_book/widgets/book.dart';
import 'package:provider/provider.dart';

class BookAdd extends StatelessWidget {
  BookAdd({
    super.key,
  });

  final bookTitleController = TextEditingController();
  final bookAuthorController = TextEditingController();
  final bookCoverController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: bookTitleController,
            decoration: const InputDecoration(labelText: "Title"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: bookAuthorController,
            decoration: const InputDecoration(labelText: "Author"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: bookCoverController,
            decoration: const InputDecoration(labelText: "Cover (URL)"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => {
                    context.read<BookProvider>().addBook(Book(
                        bookTitleController.text,
                        bookAuthorController.text,
                        bookCoverController.text))
                  },
              child: const Text("Add Book"))
        ],
      ),
    );
  }
}
