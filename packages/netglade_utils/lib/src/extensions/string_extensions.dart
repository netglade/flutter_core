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
  /// 
  /// * String is blank when it contains only whitespaces.
  bool get isBlank => trim().isEmpty;

  /// Returns negation of [isBlank].
  bool get isNotBlank => !isBlank;

  /// Returns last N characters.
  /// When the string does not have N characters, returns rest.
  String lastNCharacters(int limit) {
    return characters.getRange(max(0, length - limit)).toString();
  }
}

extension NullableStringExtensions on String? {
  /// Returns true when `this` is `String` which is `isBlank`.
  /// When the value is `null`, returns `false`.
  /// 
  /// * String? is blank when it has a value and contains only whitespaces. 
  bool get isBlank {
    return this?.isBlank ?? false;
  }

  /// Returns true when `this` is either `null` or `isBlank`.
  bool get isNullOrBlank {
    return this?.isBlank ?? true;
  }

  /// Returns negation of [isBlank].
  bool get isNotBlank {
    return !isBlank;
  }

  /// Returns true when `this` is either `null` or `isBlank`.
  bool get isNullOrEmpty {
    return this?.isEmpty ?? true;
  }

  /// Returns negation of [isNullOrEmpty].
  bool get isNotNullNorEmpty {
    return !isNullOrEmpty;
  }
}
