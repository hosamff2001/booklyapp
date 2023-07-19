import 'package:flutter/material.dart';
import 'bookdetailsviewbodyappbar.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [BookDetilsViewBodyAppBar()],
    );
  }
}
