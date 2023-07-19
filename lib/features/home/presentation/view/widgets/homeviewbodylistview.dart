import 'package:booklyapp/constance.dart';
import 'package:booklyapp/core/utliz/stayles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/assets.dart';
import '../../../../../core/utliz/routers.dart';
import 'homeviewbodyrating.dart';

class HomeViewBodyListView extends StatelessWidget {
  const HomeViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 14,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kBookDetailsPath,
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                  child: SizedBox(
                    height: 100,
                    child: AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: const DecorationImage(
                                  image: AssetImage(Assets.imagesTestImage))),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        child: Text(
                          "Harry potter and the Globlel of Fire",
                          style: Styles.textStyle20
                              .copyWith(fontFamily: Gtfamilyfont),
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
                      const SizedBox(
                        height: 3,
                      ),
                      const HomeViewBodyRating()
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
