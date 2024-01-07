import 'package:dio/dio.dart';

class ServerException extends DioException {
  ServerException({required super.requestOptions});
}

class StorageException implements Exception {
  const StorageException({this.message = 'Something went wrong'});
  final String message;
}
