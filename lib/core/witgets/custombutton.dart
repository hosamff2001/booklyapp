import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundcolor,
      this.borderredise,
      required this.textstyle});
  final String text;

  final TextStyle textstyle;

  final Color backgroundcolor;
  final BorderRadiusGeometry? borderredise;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(backgroundcolor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: borderredise ?? BorderRadius.circular(12)))),
          child: Text(text, style: textstyle)),
    );
  }
}
