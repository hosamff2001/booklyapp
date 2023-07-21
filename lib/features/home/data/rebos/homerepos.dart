import 'package:booklyapp/core/error/failers.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepos {
  Future <Either<Failler,List<BookModel>>> featchbestsellerbooks();
  Future <Either<Failler,List<BookModel>>> featchfeaturesbooks();
}
