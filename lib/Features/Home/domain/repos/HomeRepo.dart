import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';

abstract class HomeRepo {
  Future<List<BookEntite>>
      featchFeaturedBook();

  Future<List<BookEntite>>
      featchNewsBook();
}
