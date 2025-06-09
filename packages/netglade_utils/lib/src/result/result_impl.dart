// ignore_for_file: prefer-match-file-name

typedef SuccessCallback<T, S, E> = T Function(Success<S, E> value);
typedef ErrorCallback<T, S, E> = T Function(Error<S, E> value);

typedef NullableSuccessCallback<T, S, E> = T? Function(Success<S, E> value);
typedef NullableErrorCallback<T, S, E> = T? Function(Error<S, E> value);

typedef SuccessValueCallback<T, S> = T Function(S success);
typedef ErrorValueCallback<T, E> = T Function(E error);

/// Returns either Success [S] or Error [E] type.
sealed class Result<S, E> {
  const Result();

  const factory Result.success(S success) = Success<S, E>;
  const factory Result.error(E error) = Error<S, E>;

  TResult map<TResult>({
    required SuccessCallback<TResult, S, E> success,
    required ErrorCallback<TResult, S, E> error,
  });

  TResult? mapOrNull<TResult>({
    NullableSuccessCallback<TResult, S, E> success,
    NullableErrorCallback<TResult, S, E> error,
  });

  TResult when<TResult>({
    required SuccessValueCallback<TResult, S> success,
    required ErrorValueCallback<TResult, E> error,
  });
}

final class Success<S, E> extends Result<S, E> {
  final S success;

  const Success(this.success);

  @override
  TResult map<TResult>({
    required SuccessCallback<TResult, S, E> success,
    required ErrorCallback<TResult, S, E> error,
  }) => success(this);

  @override
  TResult? mapOrNull<TResult>({
    NullableSuccessCallback<TResult, S, E>? success,
    NullableErrorCallback<TResult, S, E>? error,
  }) => success?.call(this);

  @override
  TResult when<TResult>({
    required SuccessValueCallback<TResult, S> success,
    required ErrorValueCallback<TResult, E> error,
  }) => success(this.success);
}

final class Error<S, E> extends Result<S, E> {
  final E error;

  const Error(this.error);

  @override
  TResult map<TResult>({
    required SuccessCallback<TResult, S, E> success,
    required ErrorCallback<TResult, S, E> error,
  }) => error(this);

  @override
  TResult? mapOrNull<TResult>({
    NullableSuccessCallback<TResult, S, E>? success,
    NullableErrorCallback<TResult, S, E>? error,
  }) => error?.call(this);

  @override
  TResult when<TResult>({
    required SuccessValueCallback<TResult, S> success,
    required ErrorValueCallback<TResult, E> error,
  }) => error(this.error);
}

// ignore: prefer-single-declaration-per-file, this can be here
extension ResultExtension<S, E> on Result<S, E> {
  bool get isSuccess => this is Success<S, E>;
  bool get isError => !isSuccess;

  /// Retreives success from [Result] or throws.
  // ignore: avoid-non-null-assertion, developer's responsbility
  S get asSuccess => mapOrNull(success: (l) => l)!.success;

  /// Retreives error from [Result] or throws.
  // ignore: avoid-non-null-assertion, developer's responsbility
  E get asError => mapOrNull(error: (r) => r)!.error;

  S? get maybeSuccess => mapOrNull(success: (l) => l.success);

  E? get maybeError => mapOrNull(error: (r) => r.error);
}
