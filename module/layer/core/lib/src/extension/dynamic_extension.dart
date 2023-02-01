R run<R>(R Function() operation) {
  return operation();
}

extension DynamicExtension<T> on T {
  R let<R>(R Function(T self) operation_for) {
    return operation_for(this);
  }

  T also(void Function(T self) operation_for) {
    operation_for(this);
    return this;
  }

  T? takeIf(bool Function(T self) predicament) {
    return predicament.call(this) ? this : null;
  }

  T? takeUnless(bool Function(T self) predicament) {
    return predicament.call(this) ? null : this;
  }
}
