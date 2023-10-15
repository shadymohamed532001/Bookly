import 'package:bookly/Core/errors/Failuers.dart';
import 'package:bookly/Core/useCase/UseCase.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooUseCase extends UseCase<List<BookEntite>, noParmiter> {
  final HomeRepo homeRepo;

  FeatchFeaturedBooUseCase({required this.homeRepo});

  @override
  Future<Either<Failuers, List<BookEntite>>> call([noParmiter? parameter]) {
    return homeRepo.featchFeaturedBook();
  }
}
