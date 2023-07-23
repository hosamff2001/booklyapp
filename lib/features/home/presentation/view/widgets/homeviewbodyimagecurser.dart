import 'package:booklyapp/core/utliz/routers.dart';
import 'package:booklyapp/core/witgets/customerrorimage.dart';
import 'package:booklyapp/core/witgets/customloadingimage.dart';
import 'package:booklyapp/features/home/presentation/manger/featurebooks/featurebooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'customimagebuilder.dart';

class HomeViewBodyImageCurser extends StatelessWidget {
  const HomeViewBodyImageCurser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeaturedbooksState>(
      builder: (context, state) {
        if (state is FeaturebooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                                  GoRouter.of(context).push(AppRouter.kBookDetailsPath,extra: state.books[index]);

                  },
                  child: CustomImageBuilder(
                      imageurl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail??""),
                );
              },
            ),
          );
        } else if (state is FeaturebooksError) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
