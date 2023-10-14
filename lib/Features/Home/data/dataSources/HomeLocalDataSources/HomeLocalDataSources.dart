import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';

abstract class HomeLocalDataSoureces {
  Future<List<BookEntite>>
      featchFeaturedBook();

  Future<List<BookEntite>>
      featchNewsBook();
}

class HomeLocalDataSourcesImpl
    extends HomeLocalDataSoureces {
  @override
  Future<List<BookEntite>>
      featchFeaturedBook() {
    // TODO: implement featchFeaturedBook
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntite>>
      featchNewsBook() {
    // TODO: implement featchNewsBook
    throw UnimplementedError();
  }
}
