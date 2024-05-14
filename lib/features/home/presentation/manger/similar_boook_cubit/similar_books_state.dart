import 'package:bookly_app/features/home/data/models/book_model/item.dart';

abstract class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
SimilarBooksFailure({
    required this.errorMessage,
  });

  final String errorMessage;
}

final class SimilarBooksSuccess extends SimilarBooksState {
  SimilarBooksSuccess({
    required this.books,
  });

  final List<Item> books;
}
