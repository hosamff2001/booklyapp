import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utliz/stayles.dart';

class BookTexts extends StatelessWidget {
  final int index;

  const BookTexts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Text(
            "Harry potter and the Globlel of Fire",
            style: Styles.textStyle20.copyWith(fontFamily: Gtfamilyfont),
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Text(
            "J.K Rowling ${index + 1}",
            style: Styles.textStyle14,
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
