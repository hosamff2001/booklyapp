import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utliz/stayles.dart';

class HomeViewBodyRating extends StatelessWidget {
  const HomeViewBodyRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "19.99 €",
                  style: Styles.textStyle20
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(
                  FontAwesomeIcons.solidStar,
                  color: Color(0xffFFDD4F),
                ),
                const SizedBox(
                  width: 6.3,
                ),
                const Text(
                  "4.8",
                  style: Styles.textStyle16,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "(2450)",
                  style: Styles.textStyle14
                      .copyWith(color: const Color(0xff707070)),
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            );
  }
}