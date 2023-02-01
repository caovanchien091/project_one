import 'package:core/core.dart';

class ConnectException implements AppException {
  final int? code;
  final dynamic error;

  const ConnectException({
    this.code,
    this.error,
  });
}
