import 'package:booklyapp/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/Splash/presentation/view/splashview.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimyColor),
      home: const SplashView(),
    );
  }
}
