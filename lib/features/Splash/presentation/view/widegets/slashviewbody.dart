import 'package:booklyapp/features/home/presentation/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logoanimated.dart';
import 'textanimated.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideanimation1;
  late Animation<Offset> slideanimation2;

  @override
  void initState() {
    super.initState();
    initanimation();
    navagettohome();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        logoanimated(slideanimation2: slideanimation2),
        const SizedBox(
          height: 5,
        ),
        textanimated(slideanimation1: slideanimation1)
      ],
    );
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }


  void initanimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    slideanimation1 =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);
    slideanimation2 =
        Tween<Offset>(begin: const Offset(-15, 0), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
  void navagettohome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(const HomePage(),
            transition: Transition.circularReveal,
            duration: const Duration(milliseconds: 400));
      },
    );
  }
}
