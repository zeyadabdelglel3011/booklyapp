
//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';

import 'dart:math';

import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utilities/api_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {

  final ApiRequest apiRequest ;

  HomeRepoImpl(this.apiRequest);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try {
      var data = await apiRequest.get(
          url: "volumes?Filtering=free-ebooks&Sorting=newest&q=subject : programming" );
        List<BookModel> books = [];
        for(var item in data['items']){
          try{
            books.add(BookModel.fromJson(item));
          }catch(e){
            books.add(BookModel.fromJson(item));
          }
        }
        return right(books);

    } catch(e){
    if(e is DioException)
    {
        return left(ServerFailure.fromDioError(e),
        );
    }
    return left(ServerFailure(e.toString(),),);
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiRequest.get(
          url: "volumes?Filtering=free-ebooks&q=subject : computer science");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {

      if(e is DioException)
      {
        return left(ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString(),),);
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
    try {
      var data = await apiRequest.get(
          url: "volumes?Filtering=free-ebooks&Sorting = relevance &q=subject : programming");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {

      if(e is DioException)
      {
        return left(ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString(),),);
    }

  }
  }




