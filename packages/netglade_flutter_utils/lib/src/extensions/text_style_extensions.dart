import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w900);

  TextStyle get undertline => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle withLetterSpacing(double value) => copyWith(letterSpacing: value);

  TextStyle withLineHeight(double value) => copyWith(height: value);

  TextStyle withColor(Color? value) => color != null ? copyWith(color: value) : this;

  TextStyle withWeight(FontWeight value) => copyWith(fontWeight: value);

  TextStyle withSize(double size) => copyWith(fontSize: size);
}
