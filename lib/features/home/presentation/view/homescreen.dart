import 'package:flutter/material.dart';

import '../../../../core/utliz/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: "Logo",
          child: Container(
              padding: EdgeInsets.all(8),
              width: 200,
              height: 100,
              child: Image.asset(Assets.imagesLogo))),
    );
  }
}
