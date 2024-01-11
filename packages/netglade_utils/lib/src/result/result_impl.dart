// ignore_for_file: prefer-match-file-name

typedef SuccessCallback<T, S, E> = T? Function(Success<S, E> value);
typedef ErrorCallback<T, S, E> = T? Function(Error<S, E> value);

/// Returns either Success [S] or Error [E] type.
sealed class Result<S, E> {
  const Result();

  const factory Result.success(S success) = Success<S, E>;
  const factory Result.error(E error) = Error<S, E>;

  TResult? mapOrNull<TResult extends Object?>({
    SuccessCallback<TResult, S, E>? success,
    ErrorCallback<TResult, S, E>? error,
  });
}

final class Success<S, E> extends Result<S, E> {
  final S success;

  const Success(this.success);

  @override
  TResult? mapOrNull<TResult extends Object?>({
    SuccessCallback<TResult, S, E>? success,
    ErrorCallback<TResult, S, E>? error,
  }) =>
      success?.call(this);
}

final class Error<S, E> extends Result<S, E> {
  final E error;

  const Error(this.error);

  @override
  TResult? mapOrNull<TResult extends Object?>({
    SuccessCallback<TResult, S, E>? success,
    ErrorCallback<TResult, S, E>? error,
  }) =>
      error?.call(this);
}

extension ResultExtension<S, E> on Result<S, E> {
  bool get isSuccess => this is Success<S, E>;
  bool get isError => !isSuccess;

  /// Retreives success from [Result] or throws.
  // ignore: avoid-non-null-assertion, developer's responsbility
  S get asSuccess => mapOrNull(success: (l) => l)!.success;

  /// Retreives error from [Result] or throws.
  // ignore: avoid-non-null-assertion, developer's responsbility
  E get asError => mapOrNull(error: (r) => r)!.error;
}
