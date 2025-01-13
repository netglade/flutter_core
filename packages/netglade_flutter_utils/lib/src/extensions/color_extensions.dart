import 'package:flutter/painting.dart';

extension ColorExtensions on Color {
  /// Returns color darkened by [amount].
  Color darken([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1, 'amount must be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  /// Returns color lightened by [amount].
  Color lighten([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1, 'amount must be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  /// Returns color from its [hex] representation.
  static Color fromHexString(String hex) {
    final value = hex.toUpperCase().replaceAll('#', '');

    if (value.length == 6) return Color(int.parse('FF$value', radix: 16));

    return Color(int.parse(value, radix: 16));
  }

  // ignore: prefer-boolean-prefixes, ok naming.
  String toHexString({bool includeSign = false, bool includeAlpha = true, bool asUpperCase = true}) {
    final alpha = (a * 255).toInt().toRadixString(16).padLeft(2, '0');
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');

    final result = '${includeSign ? '#' : ''}${includeAlpha ? alpha : ''}$red$green$blue';

    return asUpperCase ? result.toUpperCase() : result;
  }
}
