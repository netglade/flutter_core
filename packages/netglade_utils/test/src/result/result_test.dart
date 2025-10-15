import 'package:netglade_utils/src/result/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result extensions', () {
    test('isSuccess', () {
      // arrange
      const data = 10;

      // act
      const Result<int, String> either = Success(data);

      // assert
      expect(either.isSuccess, isTrue);
      expect(either.isError, isFalse);
    });

    test('isError', () {
      // arrange
      const data = 'abc';

      // act
      const Result<int, String> either = Error(data);

      // assert
      expect(either.isSuccess, isFalse);
      expect(either.isError, isTrue);
    });

    test('asSuccess', () {
      // arrange
      const data = 10;

      // act
      const Result<int, String> either = Success(data);
      final result = either.asSuccess;

      // assert
      expect(result, equals(10));
    });

    test('asSuccess with nullable type', () {
      // arrange
      const int? data = null;

      // act
      const Result<int?, String> either = Success(data);

      // assert
      expect(either.asSuccess, isNull);
    });

    test('asError', () {
      // arrange
      const data = 'abc';

      // act
      const Result<int, String> either = Error(data);
      final result = either.asError;

      // assert
      expect(result, equals('abc'));
    });

    test('asError with nullable type', () {
      // arrange
      const String? data = null;

      // act
      const Result<int, String?> either = Error(data);

      // assert
      expect(either.asError, isNull);
    });
  });
}
