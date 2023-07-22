import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/bookdetilsviewbody.dart';
import 'package:flutter/material.dart';

class BookDetils extends StatelessWidget {
  const BookDetils({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetilsViewBody(book: book,)),
    );
  }
}
