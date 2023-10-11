import 'package:bookly/Core/errors/Failuers.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, para> {
  Future<Either<Failuers, Type>> call([para parameter]);
}

class noParmiter {}
