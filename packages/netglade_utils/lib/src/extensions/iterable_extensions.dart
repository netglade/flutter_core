import 'dart:core';

typedef Selector<T, K> = K Function(T selectFrom);

extension IterableExtensions<T> on Iterable<T> {
  /// Returns an iterable containing only elements from the given collection having distinct keys returned by the given [selector] function.
  /// If multiple elements have the same key, first element is returned.
  Iterable<T> distinctBy<K>(Selector<T, K> selector) {
    final result = <K, T>{};
    for (final item in this) {
      final _ = result.putIfAbsent(selector(item), () => item);
    }

    return result.values;
  }

  /// Maps into [K] with index.
  ///
  /// Faster than mapIndexed `sync*`.
  // ignore: prefer-typedefs-for-callbacks, ok to have it inline, avoid-positional-record-field-access
  Iterable<K> mapIndexed2<K>(K Function(int index, T value) map) => indexed.map((entry) => map(entry.$1, entry.$2));
}

extension IterableIterableExtension<T> on Iterable<Iterable<T>> {
  List<T> get flattenedList => [for (final elements in this) ...elements];
}
