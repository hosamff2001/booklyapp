
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/rebos/homerepos.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featurebooks_state.dart';

class FeatureBooksCubit extends Cubit<FeaturedbooksState> {
  FeatureBooksCubit(this.homeRepos) : super(FeaturebooksInitial());
  final HomeRepos homeRepos;

  Future<void> featchfuturebooks() async {
    emit(FeaturebooksLoading());

    var response = await homeRepos.featurefeaturesbooks();
    response.fold((faillure) {
      emit(FeaturebooksError(faillure.errormessage));
    }, (books) {
      emit(FeaturebooksSuccess(books));
    });
  }
}
