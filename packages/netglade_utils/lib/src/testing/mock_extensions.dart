// ignore_for_file: prefer-match-file-name

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
}

extension SuccessAnswer<T, E> on When<Future<Result<T, E>>> {
  void thenAnswerWithSuccess(T value) => thenAnswer((_) async => Success(value));
}

extension SuccessAnswerOr<T, E> on When<FutureOr<Result<T, E>>> {
  void thenAnswerWithSuccess(T value) => thenAnswer((_) => Success(value));
}

extension ErrorAnswer<T, E> on When<Future<Result<T, E>>> {
  void thenAnswerWithError(E error) => thenAnswer((_) async => Error(error));
}

extension ErrorAnswerOr<T, E> on When<FutureOr<Result<T, E>>> {
  void thenAnswerWithError(E error) => thenAnswer((_) => Error(error));
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
