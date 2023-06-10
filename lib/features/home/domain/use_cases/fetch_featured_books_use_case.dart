import 'package:bookly_app/core/erorrs/failure.dart';
import 'package:bookly_app/core/use_cases/use_caes.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCases<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
