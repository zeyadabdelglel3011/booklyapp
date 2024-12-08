//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';

import 'package:booklyapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either< Failure ,List<BookModel>>> fetchNewestBooks();
  Future<Either< Failure ,List<BookModel>>> fetchFeaturedBooks();

  Future<Either< Failure ,List<BookModel>>> fetchSimilarBooks({required String category});

}