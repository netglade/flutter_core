typedef VoidCallback = void Function();

typedef Getter<T> = T Function();

typedef Setter<T> = void Function(T value);

typedef Change<T> = Setter<T>;
