import 'package:booklyapp/features/home/presentation/view/widgets/bookdetilsviewbody.dart';
import 'package:flutter/material.dart';

class BookDetils extends StatelessWidget {
  const BookDetils({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetilsViewBody()),
    );
  }
}