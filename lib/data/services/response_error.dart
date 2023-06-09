import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';

/// A representation of all possible errors while connecting with the
/// backend.
///
/// We return those errors to get localized messages to display to the user.
@freezed
class ResponseError<T> with _$ResponseError<T> implements Exception {
  const ResponseError._();
  const factory ResponseError.noInternetConnection() = _NoInternetConnection;
  const factory ResponseError.sendTimeout() = _SendTimeout;
  const factory ResponseError.connectTimeout() = _ConnectTimeout;
  const factory ResponseError.receiveTimeout() = _ReceiveTimeout;
  const factory ResponseError.notFound() = _NotFound;
  const factory ResponseError.tooManyRequests() = _TooManyRequests;
  const factory ResponseError.unprocessableEntity() = _UnprocessableEntity;
  const factory ResponseError.internalServerError() = _InternalServerError;
  const factory ResponseError.unexpectedError() = _UnexpectedError;
  const factory ResponseError.requestCancelled() = _RequestCancelled;
  const factory ResponseError.conflict() = _Conflict;
  const factory ResponseError.unauthorized() = _Unauthorized;
  const factory ResponseError.invalidPassword() = _InvalidPasswordError;
  const factory ResponseError.invalidEmail() = _InvalidEmailError;
  const factory ResponseError.invalidLoginCredentials() =
      _InvalidLoginCredentials;
  const factory ResponseError.invalidRegistrationCredentials() =
      _InvalidRegistrationCredentials;
  const factory ResponseError.invalidSearchTerm() = _InvalidSearchTermError;

  static ResponseError from(Object error) {
    if (error is ResponseError) {
      return error;
    } else if (error is SocketException) {
      return const ResponseError.noInternetConnection();
    } else if (error is DioError) {
      switch (error.type) {
        case DioErrorType.sendTimeout:
          return const ResponseError.sendTimeout();
        case DioErrorType.connectTimeout:
          return const ResponseError.connectTimeout();
        case DioErrorType.receiveTimeout:
          return const ResponseError.receiveTimeout();
        case DioErrorType.other:
          return const ResponseError.noInternetConnection();
        case DioErrorType.cancel:
          return const ResponseError.requestCancelled();
        case DioErrorType.response:
          switch (error.response!.statusCode) {
            case 401:
              return const ResponseError.unauthorized();
            case 404:
              return const ResponseError.notFound();
            case 409:
              return const ResponseError.conflict();
            case 422:
              return const ResponseError.unprocessableEntity();
            case 429:
              return const ResponseError.tooManyRequests();
            case 500:
            case 502:
              return const ResponseError.internalServerError();
            default:
              // If we receive a unexpected status code, we throw an exception.
              final statusCode = error.response!.statusCode;
              throw Exception('Received invalid status code: $statusCode');
          }
      }
    } else if (error is TypeError) {
      debugPrint(error.toString());
    }
    return const ResponseError.unexpectedError();
  }
}
