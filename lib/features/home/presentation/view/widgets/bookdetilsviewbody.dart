import 'bookdetilssection.dart';
import 'package:flutter/material.dart';
import 'bookdetailsviewbodyappbar.dart';
import 'simillerbookssectionview.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BookDetilsViewBodyAppBar(),
              BookDetilesSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimillerBooksSection()
            ],
          ),
        )
      ],
    );
  }
}
