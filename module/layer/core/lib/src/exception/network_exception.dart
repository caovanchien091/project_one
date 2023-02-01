import 'package:core/core.dart';

class NetworkException implements AppException {
  final int? code;
  final dynamic error;

  const NetworkException({
    this.code,
    this.error,
  });
}
