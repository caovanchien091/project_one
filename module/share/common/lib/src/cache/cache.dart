import 'package:core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Cache with _CacheInit {
  static final Cache I = Cache();

  bool readBool(String key) {
    return _cacheBox.get(key) == true;
  }

  int? readInt(String key) {
    return int.tryParse(
      _cacheBox.get(key).toString(),
    );
  }

  double? readDouble(String key) {
    return double.tryParse(
      _cacheBox.get(key).toString(),
    );
  }

  String? readString(String key) {
    return _cacheBox.get(key).toString();
  }

  Future<void> write(String key, dynamic value) {
    return _cacheBox.put(key, value);
  }

  Future<void> clear() {
    return _cacheBox.deleteFromDisk();
  }

  Future<void> delete(String key) {
    return _cacheBox.delete(key);
  }
}

mixin _CacheInit {
  late final Box _cacheBox;

  Future<void> init() async {
    await Hive.initFlutter().then(
      (_) => Hive.openBox('cacheName').then(
        (box) => _cacheBox = box,
      ),
    );
  }
}
