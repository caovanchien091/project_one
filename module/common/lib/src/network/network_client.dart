import 'package:common/common.dart';

abstract class NetworkClient {
  String get baseUrl;

  NetworkMap<String> get headers;

  List<Interceptor> get interceptors;

  // ======================================================================== //

  late final Dio _client = NetworkCreator.create(
    baseUrl: baseUrl,
    headers: headers,
    interceptors: interceptors,
  );

  // ======================================================================== //

  Future<Response<T>> fetch<T>({
    String? path,
    String? baseUrl,
    dynamic data,
    NetworkMap? headers,
    NetworkMap? queries,
    ResponseType? responseType,
  }) {
    String contentType = '';

    return _client.fetch(
      RequestOptions(
        path: path ?? '',
        baseUrl: baseUrl,
        data: data,
        queryParameters: queries,
        headers: headers,
        contentType: contentType,
        responseType: responseType,
      ),
    );
  }
}
