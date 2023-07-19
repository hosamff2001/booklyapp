import 'package:flutter/material.dart';

class BookDetilsViewBodyAppBar extends StatelessWidget {
  const BookDetilsViewBodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}
