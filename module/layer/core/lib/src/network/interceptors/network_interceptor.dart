import 'package:core/core.dart';
import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (await NetworkConnection.call()) {
      handler.next(options);
    } else {
      handler.reject(DioError(
        requestOptions: options,
        error: ConnectException(),
      ));
    }
  }
}
