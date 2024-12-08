import 'package:bloc/bloc.dart';

//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errorMsg));
    }, (books){
      emit(NewestBooksSuccess(books));
    });
  }
}
