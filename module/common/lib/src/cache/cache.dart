import 'package:common/common.dart';

class Cache with _CacheInit {
  static final Cache I = Cache();

  int? readInt(String key) {
    var data = _cacheBox.get(key);
    if (data is int) {
      return data;
    }
  }

  bool readBool(String key) {
    var data = _cacheBox.get(key);
    if (data is bool) {
      return data;
    } else {
      return false;
    }
  }

  double? readDouble(String key) {
    var data = _cacheBox.get(key);
    if (data is double) {
      return data;
    }
  }

  String? readString(String key) {
    var data = _cacheBox.get(key);
    if (data is String) {
      return data;
    }
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
