import 'package:common/common.dart';

extension ListExtension<E> on List<E>? {
  List<E> get self {
    return this ?? [];
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

  List<R> mapTo<R>(SingleParam<R, E> transform) {
    List<R> items = [];
    for (var item in this ?? []) {
      items.add(transform(item));
    }
    return items;
  }
}
