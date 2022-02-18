import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/constants/exceptional_constants.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.formatException(
      {required String name, required String message}) = _formatException;
  const factory NetworkException.fetchDataException(
      {required String name, required String message}) = _fetchDataException;
  const factory NetworkException.apiException(
      {required String name, required String message}) = _apiException;
  const factory NetworkException.unrecognizedException({
    required String name,
    required String message,
  }) = _unrecognizedException;
  const factory NetworkException.connectTimeOutException(
      {required String name,
      required String message}) = _connectTimeOutException;
  const factory NetworkException.receiveTimeoutException({
    required String name,
    required String message,
  }) = _receiveTimeoutException;

  const factory NetworkException.sendTimeoutException({
    required String name,
    required String message,
  }) = _sendTimeoutException;
  static NetworkException getDioException(Exception error) {
    try {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectTimeout:
            return const NetworkException.connectTimeOutException(
                name: ExceptionConstants.ConnectTimeoutException,
                message: 'Connection not Established');

          case DioErrorType.sendTimeout:
            return const NetworkException.sendTimeoutException(
                name: ExceptionConstants.SendTimeoutException,
                message: 'Failed to Send');
          case DioErrorType.receiveTimeout:
            return const NetworkException.receiveTimeoutException(
                name: ExceptionConstants.ReceiveTimeoutException,
                message: 'Connection not Established');

          case DioErrorType.response:
          case DioErrorType.cancel:
          case DioErrorType.other:
            return const NetworkException.fetchDataException(
                name: ExceptionConstants.ReceiveTimeoutException,
                message: 'No internet connection');
        }
      } else {
        return NetworkException.unrecognizedException(
            name: ExceptionConstants.UnrecognizedException,
            message: 'Unrecognized Error');
      }
    } on FormatException catch (e) {
      return NetworkException.formatException(
        name: ExceptionConstants.FormatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return NetworkException.unrecognizedException(
          name: ExceptionConstants.UnrecognizedException,
          message: 'Unrecognized Error');
    }
  }
}
