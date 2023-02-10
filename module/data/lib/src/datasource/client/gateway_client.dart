import 'package:common/common.dart';

class GatewayClient extends NetworkClient {
  @override
  String get baseUrl => '';

  @override
  NetworkMap<String> get headers => {};

  @override
  List<Interceptor> get interceptors => [];
}
