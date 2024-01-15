/// Used to determine between using default parameter value and passing null.
typedef Copy<T> = T? Function()?;

extension CopyExtensions<T> on Copy<T> {
  /// If `this` is null - return `def`,
  /// otherwise `this` is called and returned value is used.
  T? orDefault(T? def) => this == null ? def : this?.call();
}
