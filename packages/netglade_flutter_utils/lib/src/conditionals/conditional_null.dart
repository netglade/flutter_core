import 'package:flutter/material.dart';

typedef WidgetBuilderWithValue<T> = Widget Function(BuildContext context, T value);

/// Build either [whenNotNull] or [whenNull] based on [value] nullability.
/// If no [whenNull] is specified, `Container()` is used.
class ConditionalNull<T> extends StatelessWidget {
  final T? value;

  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetBuilderWithValue<T> whenNotNull;
  // ignore: prefer-correct-callback-field-name, this is more suited
  final WidgetBuilder? whenNull;

  const ConditionalNull({
    required this.value,
    required this.whenNotNull,
    this.whenNull,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final valueTmp = value;
    if (valueTmp != null) {
      return whenNotNull(context, valueTmp);
    }

    return whenNull?.call(context) ?? const SizedBox.shrink();
  }
}
