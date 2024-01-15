import 'package:flutter/material.dart';
import 'package:netglade_flutter_utils/src/conditionals/conditional.dart';

typedef WidgetWithChildBuilder = Widget Function(BuildContext context, Widget child);

/// Based on [condition] builds either [whenTrue] on true or [whenFalse] on false and wraps [child] widget.
/// If no [whenFalse] is specified, `SizedBox.shrink()` is used.
class ConditionalChild extends StatelessWidget {
  final bool condition;

  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetWithChildBuilder whenTrue;
  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetWithChildBuilder whenFalse;

  final Widget child;

  const ConditionalChild({
    required this.condition,
    required this.whenTrue,
    required this.whenFalse,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Conditional(
      condition: condition,
      whenTrue: (context) => whenTrue(context, child),
      whenFalse: (context) => whenFalse(context, child),
    );
  }
}
