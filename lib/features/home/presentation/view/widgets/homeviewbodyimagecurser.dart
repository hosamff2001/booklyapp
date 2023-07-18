import 'package:booklyapp/core/utliz/assets.dart';
import 'package:flutter/material.dart';

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
          return builditemcurser();
        },
      ),
    );
  }

  Padding builditemcurser() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
