import 'package:common/common.dart';

class NetworkCreator {
  NetworkCreator._();

  static Dio create({
    required String baseUrl,
    bool isLogger = true,
    bool checkNetwork = true,
    int sendTimeout = 0,
    int connectTimeout = 0,
    int receiveTimeout = 0,
    Map<String, String>? headers,
    List<Interceptor>? extraInterceptors,
  }) {
    Dio dio = Dio();

    dio.options.baseUrl = baseUrl;
    dio.options.headers = headers;
    dio.options.sendTimeout = sendTimeout;
    dio.options.connectTimeout = connectTimeout;
    dio.options.receiveTimeout = receiveTimeout;

    dio.interceptors.addAll([
      if (checkNetwork) NetworkInterceptor(),
      if (extraInterceptors != null) ...extraInterceptors,
      if (isLogger)
        LoggerInterceptor(
          logPrint: print,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
        ),
    ]);

    return dio;
  }
}
