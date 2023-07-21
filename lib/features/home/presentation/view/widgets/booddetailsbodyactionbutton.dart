import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../../../core/witgets/custombutton.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99 €",
              backgroundcolor: Colors.white,
              textstyle: Styles.textStyle18.copyWith(color: Colors.black),
              borderredise: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free preview",
              backgroundcolor: const Color(0xffEF8262),
              textstyle: Styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
              borderredise: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
