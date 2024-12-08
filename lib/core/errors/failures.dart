import 'package:dio/dio.dart';

abstract class Failure {

  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);


  factory ServerFailure.fromDioError(DioException dioException){
    switch(dioException.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
        // TODO: Handle this case.
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");
        // TODO: Handle this case.
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");
        // TODO: Handle this case.
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with ApiServer");
        // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);

        // TODO: Handle this case.
      case DioExceptionType.cancel:
        return ServerFailure("Request with api was canceled");
        // TODO: Handle this case.
      case DioExceptionType.connectionError:
      return ServerFailure("Connection error with ApiServer");
        // TODO: Handle this case.
      case DioExceptionType.unknown:
        if(dioException.message!.contains("SocketException")){
          return ServerFailure("No internet Connection");
        }
        return ServerFailure("Unexpected Error");
      default :
        return ServerFailure("Oops There was an error , please try again");
        
        // TODO: Handle this case.
    }
  }

  factory ServerFailure.fromResponse(int statusCode , dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response["Error" ]["message"]);
    }else if(statusCode ==404){
      return ServerFailure("Your request not found , please try later!");

    }else if(statusCode ==500){
      return ServerFailure("Internal server Error , please try later!");

    }else{
      return ServerFailure("Oops There was an error , please try again");
    }
  }
}