extension IterableExtension<T> on Iterable<T>? {
  bool get isNullOrEmpty {
    return this != null ? this!.isEmpty : true;
  }

  bool get isNotNullOrEmpty {
    return this != null ? this!.isNotEmpty : false;
  }

  T? getOrNull(int index) {
    try {
      return this?.elementAt(index);
    } catch (_) {
      return null;
    }
  }

  T? get firstOrNull {
    try {
      return this?.first;
    } catch (_) {
      return null;
    }
  }

  T? get lastOrNull {
    try {
      return this?.last;
    } catch (_) {
      return null;
    }
  }

  List<E> generate<E>({
    required E Function(int index, T value) item,
    E? Function(int index, T value)? separate,
  }) {
    Iterable<T>? self = this;
    List<E> itemTransforms = [];

    if (self == null || self.length == 0) {
      return itemTransforms;
    }

    for (var index = 0; index < self.length; index++) {
      itemTransforms.add(
        item(index, self.elementAt(index)),
      );

      if (index < (self.length - 1) && separate != null) {
        var separateValue = separate(
          index,
          self.elementAt(index),
        );

        if (separateValue is E) {
          itemTransforms.add(
            separateValue,
          );
        }
      }
    }

    return itemTransforms;
  }
}
