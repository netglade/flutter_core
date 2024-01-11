import 'package:flutter/material.dart';
import 'package:netglade_flutter_utils/src/hooks/route_aware.dart';

typedef OnPageVisibleCallback = void Function({bool pushedIn});

/// Callback [onPageVisible] called when current PageRoute is visible again.
///
/// PageRoute is visible when
///  - was pushed
///  - top page has been popped of
///
/// Bool argument is true if route were pushed in.
void useOnPageIsVisible({
  required RouteObserver observer,
  required OnPageVisibleCallback onPageVisible,
}) =>
    useRouteAware(
      observer: observer,
      onDidPopNext: () => onPageVisible(pushedIn: false),
      onDidPush: () {
        onPageVisible(pushedIn: true);
      },
    );
