
import 'package:common/common.dart';

extension MapExtension<K, V> on Map<K, V>? {
  Map<K, V> get self {
    return this ?? {};
  }

  int get length {
    return self.length;
  }

  bool get isEmpty {
    return this == null ? true : length == 0;
  }

  bool get isNotEmpty {
    return this == null ? false : length != 0;
  }

  List<R> mapTo<R>(SingleParam<R, MapEntry<K, V>> transform) {
    List<R> items = [];
    for (var item in self.entries) {
      items.add(transform(item));
    }
    return items;
  }
}
