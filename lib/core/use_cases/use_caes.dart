import 'package:bookly_app/core/erorrs/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCases<Type, NoParam> {
  Future<Either<Failure, Type>> call([NoParam param]);
}

class NoParam {}
