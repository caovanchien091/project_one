import 'package:common/common.dart';

class ParserException extends AppException {
  const ParserException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
