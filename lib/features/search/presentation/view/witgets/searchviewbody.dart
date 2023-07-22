import 'package:booklyapp/features/search/presentation/view/witgets/searchviewbodyfiledsection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/assets.dart';
import '../../../../../core/utliz/routers.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchViewBodyFiledSection(),
        Expanded(child: HomeViewBodyListView())
      ],
    );
  }
}

class HomeViewBodyListView extends StatelessWidget {
  const HomeViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
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
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // BookTexts(index: index),
                      SizedBox(
                        height: 3,
                      ),
                      // HomeViewBodyRating()
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
