import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import 'booddetailsbodyactionbutton.dart';
import 'bookrating.dart';
import 'customimagebuilder.dart';

class BookDetilesSection extends StatelessWidget {
  const BookDetilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.32),
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
        const BookActionButton(),
      ],
    );
  }
}
