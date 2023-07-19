import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utliz/stayles.dart';
import 'bookrating.dart';

class HomeViewBodyRating extends StatelessWidget {
  const HomeViewBodyRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "19.99 €",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const BookRating()
      ],
    );
  }
}
