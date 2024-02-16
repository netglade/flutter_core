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
  ///
  /// * String is blank when it contains only whitespaces.
  bool get isNotBlank => !isBlank;

  /// Returns last N characters.
  /// When the string does not have N characters, returns rest.
  String lastNCharacters(int limit) {
    return characters.getRange(max(0, length - limit)).toString();
  }

  String? ifEmpty([String? defaultValue]) {
    return isEmpty ? defaultValue : this;
  }

  String? ifBlank([String? defaultValue]) {
    return isBlank ? defaultValue : this;
  }
}

extension NullableStringExtensions on String? {
  /// Returns true when `this` is either `null` or `isBlank`.
  ///
  /// * String? is blank when it has a value and contains only whitespaces.
  bool get isNullOrBlank {
    return this?.isBlank ?? true;
  }

  /// Returns negation of [isNullOrBlank].
  bool get isNotNullNorBlank {
    return !isNullOrBlank;
  }

  /// Returns true when `this` is either `null` or `isBlank`.
  bool get isNullOrEmpty {
    return this?.isEmpty ?? true;
  }

  /// Returns negation of [isNullOrEmpty].
  bool get isNotNullNorEmpty {
    return !isNullOrEmpty;
  }

  String? ifEmpty([String? defaultValue]) {
    return (this?.isEmpty ?? false) ? defaultValue : this;
  }

  String? ifBlank([String? defaultValue]) {
    return (this?.isBlank ?? false) ? defaultValue : this;
  }
}
