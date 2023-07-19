import 'package:flutter/material.dart';

import 'customimagebuilder.dart';

class HomeViewBodyImageCurser extends StatelessWidget {
  const HomeViewBodyImageCurser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return CustomImageBuilder();
        },
      ),
    );
  }

  
}
