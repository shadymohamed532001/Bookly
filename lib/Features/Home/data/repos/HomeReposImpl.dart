import 'package:bookly/Core/errors/Failuers.dart';
import 'package:bookly/Features/Home/data/dataSources/HomeLocalDataSources/HomeLocalDataSources.dart';
import 'package:bookly/Features/Home/data/dataSources/HomeRemoteDataSources/HomeRemoteDataSources.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSoureces homeRemoteDataSoureces;
  final HomeLocalDataSoureces homeLocalDataSoureces;

  HomeRepoImpl(this.homeLocalDataSoureces,
      {required this.homeRemoteDataSoureces});
  @override
  Future<Either<Failuers, List<BookEntite>>> featchFeaturedBook() async {
    List<BookEntite> books;
    try {
      books = homeLocalDataSoureces.featchFeaturedBook();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSoureces.featchFeaturedBook();
      return right(books);
    } catch (e) {
      return left(ServiersFailuers());
    }
  }

  @override
  Future<Either<Failuers, List<BookEntite>>> featchNewsBook() async {
    List<BookEntite> books;

    try {
      books = homeLocalDataSoureces.featchNewsBook();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSoureces.featchNewsBook();
      return right(books);
    } catch (e) {
      return left(Failuers());
    }
  }
}
