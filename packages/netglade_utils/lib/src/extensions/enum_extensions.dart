extension EnumExtensions<T extends Enum> on Iterable<T> {
  /// Finds the enum value in this list with name [name].
  ///
  /// Goes through this collection looking for an enum with
  /// name [name], as reported by [EnumName.name].
  /// Returns the first value with the given name. Such a value must be found.
  T byNameOrDefault(String name, {required T defaultValue}) {
    try {
      return byName(name);
      // ignore: avoid_catching_errors, byName throws it
    } on ArgumentError catch (_) {
      return defaultValue;
    }
  }

  T? byNameOrNull(String name) {
    try {
      return byName(name);
      // ignore: avoid_catching_errors, byName throws it
    } on ArgumentError catch (_) {
      return null;
    }
  }
}
