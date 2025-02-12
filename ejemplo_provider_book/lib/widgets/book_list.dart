import 'package:flutter/material.dart';
import 'package:ejemplo_provider_book/provider/book_provider.dart';
import 'package:provider/provider.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    final bookList = context.watch<BookProvider>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bookList.getBookListLenght(),
          itemBuilder: (BuildContext context, int index) {
            return LibroWidget(
              index: index,
              title: bookList.getBookAt(index).title,
              author: bookList.getBookAt(index).author,
              cover: bookList.getBookAt(index).cover,
            );
          }),
    );
  }
}

class LibroWidget extends StatelessWidget {
  const LibroWidget(
      {super.key,
      required this.index,
      required this.title,
      required this.author,
      required this.cover});

  final String title;
  final String author;
  final String cover;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 0),
      child: Column(
        children: [
          SizedBox(height: 200, child: Image.network(cover)),
          Text(title),
          Text(author),
          IconButton(
            onPressed: () => {context.read<BookProvider>().removeBookAt(index)},
            icon: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
