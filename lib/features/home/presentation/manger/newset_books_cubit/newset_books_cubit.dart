import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewSetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewSetBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(errorMessage: failure.toString()));
    }, (books) {
      emit(NewsetBooksSuccess(books: books))  ;
    });
  }
}
