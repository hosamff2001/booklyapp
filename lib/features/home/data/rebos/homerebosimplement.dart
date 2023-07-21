import 'package:booklyapp/core/error/failers.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/rebos/homerepos.dart';
import 'package:dartz/dartz.dart';

class HomeRebosimple implements HomeRepos{
  @override
  Future<Either<Failler, List<BookModel>>> featchbestsellerbooks() {
    // TODO: implement featchbestsellerbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failler, List<BookModel>>> featchfeaturesbooks() {
    // TODO: implement featchfeaturesbooks
    throw UnimplementedError();
  }
}