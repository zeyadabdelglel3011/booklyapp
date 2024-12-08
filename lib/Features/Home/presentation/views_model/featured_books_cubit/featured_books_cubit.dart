import 'package:bloc/bloc.dart';
//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';

//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  
  
  final HomeRepo homeRepo ;
  
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
  var result = await homeRepo.fetchFeaturedBooks();
  result.fold((failure) {
    emit(FeaturedBooksFailure(failure.errorMsg));
  }, (books){
    emit(FeaturedBooksSuccess(books));
  });
  }
}
