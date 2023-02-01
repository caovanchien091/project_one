import 'package:core/core.dart';

class AuthException implements AppException {
  final int? code;
  final dynamic error;

  const AuthException({
    this.code,
    this.error,
  });
}
