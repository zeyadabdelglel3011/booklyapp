import 'package:dio/dio.dart';

class ApiRequest
{
  final _baseUrl = "https://www.googleapis.com/books/v1/" ;
  final Dio dio ;


  ApiRequest(this.dio);


  Future<Map<String, dynamic>> get({required String url})
  async{
      var response = await dio.get("$_baseUrl$url");
      return response.data;
  }

}