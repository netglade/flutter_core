import 'dart:math';

import 'package:characters/characters.dart';

extension StringExtensions on String {
  /// Is empty string or only contains whitespaces.
  ///
  /// Returns true for i.e.
  /// - '    '
  /// - '\t'
  ///
  /// When you only need to check exactly empty, use `isEmpty`.
  bool get isBlank => trim().isEmpty;

  /// Returns true when value is not empty and contains some characters except whitespaces.
  bool get isNotBlank => !isBlank;

  /// The [Characters] of this string.
  Characters get characters => Characters(this);

  /// Returns last N characters.
  /// When the string does not have N characters, returns rest.
  String lastNCharacters(int limit) {
    return characters.getRange(max(0, length - limit)).toString();
  }
}

extension NullableStringExtensions on String? {
  /// Returns true when `this` is `String` which is `isBlank`.
  /// When the value is `null`, returns `false`.
  bool get isBlank {
    if (this case final nonNull?) {
      return nonNull.isBlank;
    }

    return false;
  }

  /// Returns true when `this` is `String` which is `isBlank`.
  /// When the value is `null`, returns `false`.
  bool get isNotBlank {
    if (this case final nonNull?) {
      return nonNull.isNotBlank;
    }

    return false;
  }

  /// Returns true when `this` is either `null` or `isBlank`.
  bool get isNullOrEmpty {
    if (this case final nonNull?) {
      return nonNull.isEmpty;
    }

    return true;
  }

  /// Returns true when `this` is either `null` or `isBlank`.
  bool get isNullOrBlank {
    if (this case final nonNull?) {
      return nonNull.isBlank;
    }

    return true;
  }
}
