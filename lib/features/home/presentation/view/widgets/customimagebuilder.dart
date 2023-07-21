import 'package:flutter/material.dart';

import '../../../../../core/utliz/assets.dart';

class CustomImageBuilder extends StatelessWidget {
  const CustomImageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                    image: AssetImage(Assets.imagesTestImage))),
          )),
    );
  }
}
