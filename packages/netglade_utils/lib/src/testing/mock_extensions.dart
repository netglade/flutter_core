// ignore_for_file: prefer-match-file-name, prefer-single-declaration-per-file

import 'dart:async';

import 'package:mocktail/mocktail.dart';
import 'package:netglade_utils/src/result/result.dart';

extension FutureVoidAnswer on When<Future<void>> {
  // ignore: no-empty-block, its ok
  void thenAnswerWithVoid() => thenAnswer((_) async {});
}

extension VoidAnswer on When<void> {
  // ignore: no-empty-block, its ok
  void thenAnswerWithVoid() => thenAnswer((_) {});
}

extension GenericAnswer<T> on When<Future<T>> {
  void thenAnswerWith(T value) => thenAnswer((_) => Future<T>.value(value));
}

extension StreamedAnswer<T> on When<Stream<T>> {
  void thenEmitValues(List<T> values) => thenAnswer((_) => Stream.fromIterable(values));
}

extension VerificationResultEx on VerificationResult {
  void calledOnce() => called(1);

  void calledOnlyThisAndNothingElse() {
    called(1);
  }
}

/// Verifies that the given mock was called exactly once with the provided function.
///
/// Also verifies that no other interactions with the mock occurred.
// ignore: prefer-static-class, prefer-typedefs-for-callbacks, avoid-dynamic, keep it.
void verifyOnlyOneCallAndNothingElse<T>(dynamic mock, T Function() verifyCall) {
  verify(verifyCall).calledOnce();
  verifyNoMoreInteractions(mock);
}

extension SuccessAnswer<T, E> on When<Future<Result<T, E>>> {
  void thenAnswerWithSuccess(T value) => thenAnswer((_) async => Success(value));

  void thenAnswerWithError(E error) => thenAnswer((_) async => Error(error));
}

extension SuccessAnswerOr<T, E> on When<FutureOr<Result<T, E>>> {
  void thenAnswerWithSuccess(T value) => thenAnswer((_) => Success(value));

  void thenAnswerWithError(E error) => thenAnswer((_) => Error(error));
}

extension OptionAnswer<T> on When<Future<Option<T>>> {
  void thenAnswerWithNone() => thenAnswer((_) async => const None());

  void thenAnswerWithSome(T value) => thenAnswer((_) async => Some(value));
}

extension OptionAnswerOr<T> on When<FutureOr<Option<T>>> {
  void thenAnswerWithNone() => thenAnswer((_) async => const None());

  void thenAnswerWithSome(T value) => thenAnswer((_) async => Some(value));
}

extension StreamSubscriptionAnswer<T> on When<StreamSubscription<T>> {
  void thenAnswerWithProvidedCallback() => thenAnswer((i) {
    final callback = i.positionalArguments.singleOrNull;

    // ignore: no-empty-block, it needs to be empty, prefer-typedefs-for-callbacks, private API
    return Stream.fromIterable(<T>[]).listen(callback != null ? callback as void Function(T value) : (_) {});
  });

  void thenAnswerWithCustomStream(Stream<T> stream) => thenAnswer((i) {
    final callback = i.positionalArguments.singleOrNull;

    // ignore: no-empty-block, it needs to be empty, prefer-typedefs-for-callbacks, private API
    return stream.listen(callback != null ? callback as void Function(T value) : (_) {});
  });
}
