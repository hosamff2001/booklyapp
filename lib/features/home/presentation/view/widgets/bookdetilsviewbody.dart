import 'package:booklyapp/core/utliz/stayles.dart';
import 'package:booklyapp/core/witgets/custombutton.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/bookrating.dart';

import 'customimagebuilder.dart';
import 'package:flutter/material.dart';
import 'bookdetailsviewbodyappbar.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        const BookDetilsViewBodyAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.3),
          child: const CustomImageBuilder(),
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookRating(),
        const SizedBox(
          height: 15,
        ),
        const BookActionButton()
      ],
    );
  }
}

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
