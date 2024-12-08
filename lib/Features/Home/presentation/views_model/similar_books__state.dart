part of 'similar_books__cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMsg;

  SimilarBooksFailure(this.errMsg);
}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books ;

  SimilarBooksSuccess(this.books);
}
