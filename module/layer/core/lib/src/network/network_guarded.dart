import 'dart:async';

import 'package:core/core.dart';
import 'package:dio/dio.dart';

Future<NetworkResponse<T>> runNetworkGuarded<T>(
  Future<T> Function() run,
) async {
  AppException exception;

  try {
    return ResponseSuccess(
      response: await run(),
    );
  } on FormatException catch (_) {
    exception = ParserException();
  } on DioError catch (_) {
    switch (_.error.runtimeType) {
      case ConnectException:
        exception = ConnectException();
        break;
      default:
        exception = NetworkException();
        break;
    }
  } catch (_) {
    exception = AppException();
  }

  return ResponseFailure(
    exception: exception,
  );
}
