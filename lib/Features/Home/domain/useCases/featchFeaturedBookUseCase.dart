import 'package:bookly/Core/errors/Failuers.dart';
import 'package:bookly/Core/useCase/UseCase.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBook extends UseCase<List<BookEntite>, noParmiter> {
  final HomeRepo homeRepo;

  FeatchFeaturedBook({required this.homeRepo});

  @override
  Future<Either<Failuers, List<BookEntite>>> call([noParmiter? parameter]) {
    return homeRepo.featchFeaturedBook();
  }
}
