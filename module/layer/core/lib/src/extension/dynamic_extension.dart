R run<R>(R Function() operation) {
  return operation();
}

extension DynamicExtension<T extends Object> on T? {
  E? cast<E>([E? defaultValue]) {
    return this is E ? this as E : defaultValue;
  }

  R let<R>(R Function(T? self) operation_for) {
    return operation_for(this);
  }

  T? also(void Function(T? self) operation_for) {
    operation_for(this);
    return this;
  }

  T? takeIf(bool Function(T? self) predicament) {
    return predicament.call(this) ? this : null;
  }

  T? takeUnless(bool Function(T? self) predicament) {
    return predicament.call(this) ? null : this;
  }

  R letNonNull<R>({
    required R Function(T value) nonNull,
    required R Function() orElse,
  }) {
    var self = this;

    if (self != null) {
      return nonNull(self);
    } else {
      return orElse();
    }
  }
}
