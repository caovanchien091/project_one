class AppException implements Exception {
  final int? code;
  final dynamic error;

  const AppException({
    this.code,
    this.error,
  });
}
