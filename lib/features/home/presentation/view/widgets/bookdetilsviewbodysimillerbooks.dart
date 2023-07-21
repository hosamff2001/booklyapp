import 'package:flutter/material.dart';

import 'customimagebuilder.dart';

class SimillerBookView extends StatelessWidget {
  const SimillerBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return const CustomImageBuilder();
        },
      ),
    );
  }
}
