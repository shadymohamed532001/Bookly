import 'package:bookly/Core/errors/Failuers.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookEntite>>> featchFeaturedBook();

  Future<Either<Failuers, List<BookEntite>>> featchNewsBook();
}
