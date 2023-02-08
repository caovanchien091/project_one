import 'package:common/common.dart';

class ConnectException extends AppException {
  const ConnectException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
