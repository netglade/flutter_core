extension MapExtensions<KEY, VALUE> on Map<KEY, VALUE> {
  /// Immutable where on maps.
  // ignore: prefer-typedefs-for-callbacks, ok to have it inline.
  Map<KEY2, VALUE2> where<KEY2, VALUE2>(bool Function(KEY key, VALUE value) test) {
    final result = <KEY2, VALUE2>{};

    for (final entry in entries) {
      if (test(entry.key, entry.value)) {
        result[entry.key as KEY2] = entry.value as VALUE2;
      }
    }

    return result;
  }
}
