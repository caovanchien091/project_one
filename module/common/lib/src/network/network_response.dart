import 'package:common/common.dart';

class NetworkResponse<TResponse> {
  final TResponse? response;
  final AppException? exception;

  const NetworkResponse._(
    this.response,
    this.exception,
  );

  bool get isFailure => runtimeType == ResponseFailure<TResponse>;

  bool get isSuccess => runtimeType == ResponseSuccess<TResponse>;

  TResult fold<TResult>({
    required TResult Function(TResponse response) onSuccess,
    required TResult Function(AppException exception) onFailure,
  }) {
    if (isSuccess) {
      return onSuccess(response as TResponse);
    } else {
      return onFailure(exception as AppException);
    }
  }
}

class ResponseSuccess<TResponse> extends NetworkResponse<TResponse> {
  const ResponseSuccess({
    required TResponse response,
  }) : super._(response, null);
}

class ResponseFailure<TResponse> extends NetworkResponse<TResponse> {
  const ResponseFailure({
    required AppException exception,
  }) : super._(null, exception);
}
