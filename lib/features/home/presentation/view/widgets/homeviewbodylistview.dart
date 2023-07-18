import 'package:flutter/material.dart';

import '../../../../../core/utliz/assets.dart';

class HomeViewBodyListView extends StatelessWidget {
  const HomeViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: SizedBox(
            height: 100,
            child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: const DecorationImage(
                          image: AssetImage(Assets.imagesTestImage))),
                )),
          ),
        )
      ],
    );
  }
}
