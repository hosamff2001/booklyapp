import 'package:booklyapp/core/utliz/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.imagesLogo),
        SizedBox(height: 5,),
        const Text(
          "For Readers",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: "GT"),
        )
      ],
    );
  }
}
