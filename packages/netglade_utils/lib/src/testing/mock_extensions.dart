// ignore_for_file: prefer-match-file-name

import 'dart:async';

import 'package:mocktail/mocktail.dart';
import 'package:netglade_utils/src/result/result.dart';
import 'package:netglade_utils/src/typedefs/typedefs.dart';

extension FutureVoidAnswer on When<Future<void>> {
  void thenAnswerWithVoid() => thenAnswer((_) async => <void>{});
}

extension VoidAnswer on When<void> {
  void thenAnswerWithVoid() => thenAnswer((_) => <void>{});
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

// TODO(utils): add when we will add api service
//
// extension ApiFailureAnswer<T> on When<Future<Result<ApiResponseOk<T>, ApiResponseFail>>> {
//   void thenAnswerWithApiFailure(ApiError apiError) => thenAnswerWith(Error(ApiResponseFail(apiError: apiError)));
// }

// extension ApiSuccessAnswer<T> on When<Future<Result<ApiResponseOk<T>, ApiResponseFail>>> {
//   void thenAnswerWithApiSuccess(T data) => thenAnswerWith(
//         Success(
//           ApiResponseOk(
//             data: data,
//             statusCode: 200,
//             response: Response('body', 200),
//           ),
//         ),
//       );
// }

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

        // ignore: no-empty-block, it needs to be empty
        return Stream.fromIterable(<T>[]).listen(callback != null ? callback as Setter<T> : (_) {});
      });

  void thenAnswerWithCustomStream(Stream<T> stream) => thenAnswer((i) {
        final callback = i.positionalArguments.singleOrNull;

        // ignore: no-empty-block, it needs to be empty
        return stream.listen(callback != null ? callback as Setter<T> : (_) {});
      });
}
