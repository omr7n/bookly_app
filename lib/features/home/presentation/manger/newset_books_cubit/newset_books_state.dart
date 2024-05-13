part of 'newset_books_cubit.dart';

abstract class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  NewsetBooksFailure({
    required this.errorMessage,
  });

  final String errorMessage;
}

final class NewsetBooksSuccess extends NewsetBooksState {
  NewsetBooksSuccess({
    required this.books,
  });

  final List<Item> books;
}
