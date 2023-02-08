import 'dart:io';

class NetworkConnection {
  NetworkConnection._();

  static Future<bool> call() async {
    try {
      return await InternetAddress.lookup('google.com').then(
        (value) => value[0].rawAddress.isNotEmpty,
      );
    } catch (_) {
      return false;
    }
  }
}
