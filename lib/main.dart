import 'package:booklyapp/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/view/splashview.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimyColor),
      home: SplashView(),
    );
  }
}
