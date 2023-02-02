extension MapExtension<K, V> on Map<K, V>? {
  int get count => this?.length ?? 0;

  bool get isNullOrEmpty {
    return this != null ? this!.isEmpty : true;
  }

  bool get isNotNullOrEmpty {
    return this != null ? this!.isNotEmpty : false;
  }

  V? getOrNull(K key) {
    try {
      return this?[key];
    } catch (_) {
      return null;
    }
  }

  V? get firstOrNull {
    try {
      return this?.values.first;
    } catch (_) {
      return null;
    }
  }

  V? get lastOrNull {
    try {
      return this?.values.last;
    } catch (_) {
      return null;
    }
  }

  List<T> generate<T>({
    required T Function(K key, V value) item,
    T? Function(K key, V value)? separate,
  }) {
    Map<K, V>? self = this;
    List<T> itemTransforms = [];

    if (self == null || self.length == 0) {
      return itemTransforms;
    }

    var entries = self.entries;
    for (var index = 0; index < self.length; index++) {
      var entry = entries.elementAt(index);
      itemTransforms.add(
        item(entry.key, entry.value),
      );

      if (index < (self.length - 1) && separate != null) {
        var separateValue = separate(
          entry.key,
          entry.value,
        );

        if (separateValue is T) {
          itemTransforms.add(separateValue);
        }
      }
    }

    return itemTransforms;
  }
}
