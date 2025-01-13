typedef NoneCallback<TResult> = TResult Function();
typedef SomeCallback<TResult, T> = TResult Function(Some<T> value);

typedef NullableNoneCallback<TResult> = TResult? Function();
typedef NullableSomeCallback<TResult, T> = TResult? Function(Some<T> value);

typedef ValueNoneCallback<TResult> = TResult Function();
typedef ValueSomeCallback<TResult, T> = TResult Function(T some);

/// Returns optionally given type [T] wrapped in [Some].
///
/// If no value is returned, [None] is returned instead.
sealed class Option<T> {
  bool get isSome => this is Some<T>;
  bool get isNone => !isSome;

  const Option();

  const factory Option.none() = None;
  const factory Option.some(T value) = Some<T>;

  TResult map<TResult>({
    required NoneCallback<TResult> none,
    required SomeCallback<TResult, T> some,
  });

  TResult? mapOrNull<TResult>({
    NullableNoneCallback<TResult>? none,
    NullableSomeCallback<TResult, T>? some,
  });

  TResult when<TResult>({
    required ValueNoneCallback<TResult> none,
    required ValueSomeCallback<TResult, T> some,
  });
}

final class None<T> extends Option<T> {
  const None();

  @override
  TResult map<TResult>({
    required NoneCallback<TResult> none,
    required SomeCallback<TResult, T> some,
  }) =>
      none();

  @override
  TResult? mapOrNull<TResult>({
    NullableNoneCallback<TResult>? none,
    NullableSomeCallback<TResult, T>? some,
  }) =>
      none?.call();

  @override
  TResult when<TResult>({
    required ValueNoneCallback<TResult> none,
    required ValueSomeCallback<TResult, T> some,
  }) =>
      none();
}

final class Some<T> extends Option<T> {
  final T value;

  const Some(this.value);

  @override
  TResult map<TResult>({
    required NoneCallback<TResult> none,
    required SomeCallback<TResult, T> some,
  }) =>
      some(this);

  @override
  TResult? mapOrNull<TResult>({
    NullableNoneCallback<TResult>? none,
    NullableSomeCallback<TResult, T>? some,
  }) =>
      some?.call(this);

  @override
  TResult when<TResult>({
    required ValueNoneCallback<TResult> none,
    required ValueSomeCallback<TResult, T> some,
  }) =>
      some(value);
}

// ignore: prefer-single-declaration-per-file, this can be here
extension OptionExtension<T> on Option<T> {
  // ignore: avoid-non-null-assertion, developer's responsbility
  T get asSome => mapOrNull(some: (r) => r)!.value;
}
