import 'package:flutter/material.dart';

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(),);
  }
}