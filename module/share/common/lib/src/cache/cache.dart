import 'package:core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

late final Box _cacheBox;

class Cache {
  final Cache I = Cache();

  static Future<void> init() async {
    await Hive.initFlutter().then(
      (_) => Hive.openBox('cacheName').then(
        (box) => _cacheBox = box,
      ),
    );
  }
}
