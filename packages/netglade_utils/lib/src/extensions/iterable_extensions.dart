import 'dart:core';

import 'package:collection/collection.dart';

typedef Selector<T, K> = K Function(T selectFrom);

extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> distinct() {
    return toSet();
  }

  /// Returns an iterable containing only elements from the given collection having distinct keys returned by the given [selector] function.
  /// If multiple elements have the same key, first element is returned.
  Iterable<T> distinctBy<K>(Selector<T, K> selector) {
    return groupBy<T, K>(this, selector)
        .values
        // ignore: avoid-unsafe-collection-methods, groupBy returns non-empty lists
        .map((e) => e.first);
  }
}
