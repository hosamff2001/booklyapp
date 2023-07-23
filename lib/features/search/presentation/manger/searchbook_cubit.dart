
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/search/data/repo/searchrepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'searchbook_state.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit(this.searchrepo) : super(SearchbookInitial());
   final Searchrepo searchrepo;

  Future<void> featurecustombook({required String text}) async{
    emit(SearchbookLoading());
   
     var response = await searchrepo.featurecustombooks(bookname: text);
    response.fold((faillure) {
      emit(SearchbookError(faillure.errormessage));
    }, (books) {
      emit(SearchbookSuccers(books));
    });
  }
}
