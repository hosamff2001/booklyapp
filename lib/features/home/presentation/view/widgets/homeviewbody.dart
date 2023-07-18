import 'package:booklyapp/core/utliz/stayles.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/homeviewbodylistview.dart';
import 'package:flutter/material.dart';

import 'homeviewbodyappbar.dart';
import 'homeviewbodyimagecurser.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeViewBodyAppBar(),
        HomeViewBodyImageCurser(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.0, bottom: 10),
          child: Text(
            "Best Seller",
            style: Styles.mediamTitle,
            textAlign: TextAlign.end,
          ),
        ),
        HomeViewBodyListView()
      ],
    );
  }
}
