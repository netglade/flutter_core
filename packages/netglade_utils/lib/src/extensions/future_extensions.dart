import 'dart:async';

import 'package:clock/clock.dart';

typedef OnTakingTooLongCallback = void Function();

extension FutureExtensions<T> on Future<T> {
  static const standardProlongTimeMs = 300;

  /// If `this` future taking longer than [duration] to execute - [callback] is called.
  Future<T> onTakingTooLong(
    Duration duration,
    OnTakingTooLongCallback callback,
  ) async {
    final timer = Timer(duration, callback);

    try {
      final result = await this;
      timer.cancel();

      return result;
    }
    // ignore: avoid_catches_without_on_clauses, gotta catch them all
    catch (e, s) {
      timer.cancel();

      return Future.error(e, s);
    }
  }

  /// Future will take at least given [duration].
  Future<T> withMinimalLoadTime(Duration duration) async {
    final started = clock.now().millisecondsSinceEpoch;

    final result = await this;

    final diff = DateTime.now().millisecondsSinceEpoch - started;

    if (diff < duration.inMilliseconds) {
      await Future<void>.delayed(
        Duration(milliseconds: duration.inMilliseconds - diff),
      );
    }

    return result;
  }

  Future<T> standardProlong([int? milliseconds]) {
    return withMinimalLoadTime(
      Duration(milliseconds: milliseconds ?? standardProlongTimeMs),
    );
  }
}
