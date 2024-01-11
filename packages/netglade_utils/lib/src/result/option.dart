typedef NoneCallback<TResult> = TResult? Function();
typedef SomeCallback<TResult, T> = TResult? Function(Some<T> value);

/// Returns optionally given type [T] wrapped in [Some].
///
/// If no value is returned, [None] is returned instead.
sealed class Option<T> {
  bool get isSome => this is Some<T>;
  bool get isNone => !isSome;

  const Option();

  const factory Option.none() = None;
  const factory Option.some(T value) = Some<T>;

  TResult? mapOrNull<TResult extends Object?>({
    NoneCallback<TResult>? none,
    SomeCallback<TResult, T>? some,
  });
}

final class None<T> extends Option<T> {
  const None();

  @override
  TResult? mapOrNull<TResult extends Object?>({
    NoneCallback<TResult>? none,
    SomeCallback<TResult, T>? some,
  }) =>
      none?.call();
}

final class Some<T> extends Option<T> {
  final T value;

  const Some(this.value);

  @override
  TResult? mapOrNull<TResult extends Object?>({
    NoneCallback<TResult>? none,
    SomeCallback<TResult, T>? some,
  }) =>
      some?.call(this);
}

extension OptionExtension<T> on Option<T> {
  // ignore: avoid-non-null-assertion, developer's responsbility
  T get asSome => mapOrNull(some: (r) => r)!.value;
}
