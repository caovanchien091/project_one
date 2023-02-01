import 'package:core/core.dart';

class ParserException implements AppException {
  final int? code;
  final dynamic error;

  const ParserException({
    this.code,
    this.error,
  });
}
