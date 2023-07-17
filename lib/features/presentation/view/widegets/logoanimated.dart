import 'package:flutter/material.dart';

import '../../../../core/utliz/assets.dart';

class logoanimated extends StatelessWidget {
  const logoanimated({
    super.key,
    required this.slideanimation2,
  });

  final Animation<Offset> slideanimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideanimation2,
      builder: (context,_) {
        return SlideTransition(
          position: slideanimation2,
          child: Image.asset(Assets.imagesLogo));
      }
    );
  }
}
