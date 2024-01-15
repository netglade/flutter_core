import 'package:flutter/material.dart';
import 'package:netglade_flutter_utils/src/conditionals/conditional.dart';

typedef WrapperBuilder = Widget Function(BuildContext context, Widget child);

/// Wraps [child] child in [wrapper] widget only if [condition] is true.
class ConditionalWrap extends StatelessWidget {
  final bool condition;

  // ignore: prefer-correct-callback-field-name, this is more suited
  final WrapperBuilder wrapper;
  final Widget child;

  const ConditionalWrap({
    required this.condition,
    required this.wrapper,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Conditional(
      condition: condition,
      whenTrue: (context) => wrapper(context, child),
      whenFalse: (_) => child,
    );
  }
}
