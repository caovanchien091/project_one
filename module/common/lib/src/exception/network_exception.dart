import 'package:common/common.dart';

class NetworkException extends AppException {
  const NetworkException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
