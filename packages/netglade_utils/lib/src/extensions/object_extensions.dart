/// Helper methods for object casting.
extension ObjectExtensions on Object? {
  /// Cast this object as X.
  X as<X>() => this as X;

  /// Cast this object as X or null.
  X? asOrNull<X>() {
    final self = this;

    return self is X ? self : null;
  }
}
