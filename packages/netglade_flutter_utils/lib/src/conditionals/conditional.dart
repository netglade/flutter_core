// ignore_for_file: prefer-match-file-name

import 'package:flutter/material.dart';

/// Based on [condition] builds either [whenTrue] on true or [whenFalse] on false.
/// If no [whenFalse] is specified, `SizedBox.shrink()` is used.
class Conditional extends StatelessWidget {
  // ignore: prefer-boolean-prefixes, dont wannta change public API
  final bool condition;

  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetBuilder whenTrue;
  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetBuilder? whenFalse;

  const Conditional({
    required this.condition,
    required this.whenTrue,
    this.whenFalse,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return whenTrue(context);
    }

    return whenFalse?.call(context) ?? const SizedBox.shrink();
  }
}
