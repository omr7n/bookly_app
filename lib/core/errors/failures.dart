import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(
            errorMessage: "Connection timeout with  ApiServer");
      case DioExceptionType.sendTimeout:
        return const ServerFailure(
            errorMessage: "Send timeout with  ApiServer");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
            errorMessage: "Receive timeout with  ApiServer");
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return const ServerFailure(
            errorMessage: "Request to ApiServer with cancel");
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return const ServerFailure(errorMessage: "No Internet Connection");
        }
        return const ServerFailure(
            errorMessage: "UnExpected Error ,please try again");
          default:
       return const ServerFailure(
            errorMessage: "Opps there was an error, please try later");  
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return const ServerFailure(
          errorMessage: "Your request is not found, please try later");
    } else if (statusCode == 500) {
      return const ServerFailure(
          errorMessage: "Internal server Error, please try later");
    } else {
      return const ServerFailure(
          errorMessage: "Opps there was an error, please try later");
    }
  }
}
