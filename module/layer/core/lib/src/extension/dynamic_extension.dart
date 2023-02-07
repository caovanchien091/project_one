R run<R>(R Function() operation) {
  return operation();
}

extension DynamicExtension<T extends Object> on T? {
  R? cast<R>([R? defaultValue]) {
    return this is R ? this as R : defaultValue;
  }

  R let<R>(R Function(T? self) operationFor) {
    return operationFor(this);
  }

  T? also(void Function(T? self) operationFor) {
    operationFor(this);
    return this;
  }

  T? takeIf(bool Function(T? self) predicament) {
    return predicament.call(this) ? this : null;
  }

  T? takeUnless(bool Function(T? self) predicament) {
    return predicament.call(this) ? null : this;
  }
}
