import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useRouteAware({
  required RouteObserver observer,

  /// Called when the top route has been popped off, and the current route shows up.
  VoidCallback? onDidPopNext,

  /// Called when the current route has been pushed.
  VoidCallback? onDidPush,

  /// Called when the current route has been popped off.
  VoidCallback? onDidPop,

  /// Called when a new route has been pushed, and the current route is no longer visible.
  VoidCallback? onDidPushNext,
  List<Object?> keys = const [],
}) {
  final context = useContext();
  final route = ModalRoute.of(context);

  useEffect(
    () {
      if (route == null) throw Exception('No route found');

      final callbacks = _RouteCallbacks(
        onDidPop: onDidPop,
        onDidPopNext: onDidPopNext,
        onDidPush: onDidPush,
        onDidPushNext: onDidPushNext,
      );
      observer.subscribe(callbacks, route as PageRoute);

      return () => observer.unsubscribe(callbacks);
    },
    [route, observer, ...keys],
  );
}

// ignore: prefer-match-file-name, should be private class and should use RouteAware as a mixin
class _RouteCallbacks with RouteAware {
  final VoidCallback? onDidPop;
  final VoidCallback? onDidPopNext;
  final VoidCallback? onDidPush;
  final VoidCallback? onDidPushNext;

  const _RouteCallbacks({
    this.onDidPop,
    this.onDidPopNext,
    this.onDidPush,
    this.onDidPushNext,
  });

  @override
  void didPop() {
    onDidPop?.call();
  }

  @override
  void didPopNext() {
    onDidPopNext?.call();
  }

  @override
  void didPush() {
    onDidPush?.call();
  }

  @override
  void didPushNext() {
    onDidPushNext?.call();
  }
}
