import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<int, List<BookEntite>>>
      featchFeaturedBook();

  Future<List<BookEntite>>
      featchNewsBook();
}
