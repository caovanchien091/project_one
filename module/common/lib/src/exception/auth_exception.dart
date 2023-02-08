import 'package:common/common.dart';

class AuthException extends AppException {
  const AuthException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
