import 'package:booklyapp/core/witgets/customerrorimage.dart';
import 'package:booklyapp/core/witgets/customloadingimage.dart';
import 'package:booklyapp/features/home/presentation/manger/featurebooks/featurebooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              itemCount: 15,
              itemBuilder: (context, index) {
                return const CustomImageBuilder();
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
