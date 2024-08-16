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

  /// Normalize supposedly string containing URL
  ///
  /// Appends https:// when does not start with.
  /// Trims any trailing '/' chars.
  String normalizeUrl() {
    final value = trim();

    if (value.startsWith(RegExp(r'http[s]?:\/\/'))) return value.rtrim('/');

    return 'https://$value'.rtrim('/');
  }

  /// Removes any trailing char from [chars].
  String rtrim(String chars) {
    final pattern = RegExp('[$chars]+\$');

    return replaceAll(pattern, '');
  }

  String capitalize() {
    if (length < 2) return this;

    return '${this[0].toUpperCase()}${characters.getRange(1).toLowerCase()}';
  }

  String shorten(int maxLength) {
    if (length < maxLength) return this;

    return '${characters.getRange(0, maxLength)}...';
  }

  String stripOuterQuotes() {
    var result = this;
    if (result.startsWith('"')) result = result.replaceFirst('"', '');

    if (result.endsWith('"')) result = result.replaceRange(result.length - 1, null, '');

    return result;
  }

  String firstLetterUppercase() => isNotEmpty ? '${this[0].toUpperCase()}${characters.getRange(1)}' : '';

  String stripNewLines([String placeholder = ' ']) {
    return replaceAll(RegExp(r'\s+'), placeholder);
  }
}

// ignore: prefer-single-declaration-per-file, this can be here
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
