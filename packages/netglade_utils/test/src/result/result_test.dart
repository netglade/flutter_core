import 'package:netglade_utils/src/result/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result extensions', () {
    test('isSuccess', () {
      const Result<int, String> either = Success(10);
      expect(either.isSuccess, isTrue);
      expect(either.isError, isFalse);
    });

    test('isError', () {
      const Result<int, String> either = Error('abc');
      expect(either.isSuccess, isFalse);
      expect(either.isError, isTrue);
    });

    test('asSuccess', () {
      const Result<int, String> either = Success(10);
      final result = either.asSuccess;

      expect(result, equals(10));
    });

    test('asSuccess with nullable type', () {
      const Result<int?, String> either = Success(null);
      expect(either.asSuccess, isNull);
    });

    test('asError', () {
      const Result<int, String> either = Error('abc');
      final result = either.asError;

      expect(result, equals('abc'));
    });

    test('asError with nullable type', () {
      const Result<int, String?> either = Error(null);
      expect(either.asError, isNull);
    });
  });
}
