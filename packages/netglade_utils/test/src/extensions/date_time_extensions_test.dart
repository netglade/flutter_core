import 'package:netglade_utils/netglade_utils.dart';
import 'package:test/test.dart';

void main() {
  test('nowWithoutTime', () {
    // arrange

    // act
    final date = DateTimeExtensions.nowWithoutTime();

    // assert
    expect(DateTime.now().withoutTime, equals(date));
  });

  for (final MapEntry(:key, :value) in <DateTime, DateTime>{
    DateTime(2022, 11, 28): DateTime(2022, 12, 2),
    DateTime(2022, 11, 29): DateTime(2022, 12, 2),
    DateTime(2022, 11, 30): DateTime(2022, 12, 2),
    DateTime(2022, 12): DateTime(2022, 12, 2),
    DateTime(2022, 12, 2): DateTime(2022, 12, 2),
    DateTime(2022, 12, 3): DateTime(2022, 12, 9),
    DateTime(2022, 12, 4): DateTime(2022, 12, 9),
  }.entries) {
    test('EndOfWorkWeek: $key should be $value', () {
      // arrange
      expect(key.endOfWorkWeek, equals(value));
    });
  }

  for (final MapEntry(:key, :value) in <DateTime, DateTime>{
    DateTime(2022, 11, 28): DateTime(2022, 12, 4),
    DateTime(2022, 11, 29): DateTime(2022, 12, 4),
    DateTime(2022, 11, 30): DateTime(2022, 12, 4),
    DateTime(2022, 12): DateTime(2022, 12, 4),
    DateTime(2022, 12, 2): DateTime(2022, 12, 4),
    DateTime(2022, 12, 3): DateTime(2022, 12, 4),
    DateTime(2022, 12, 4): DateTime(2022, 12, 4),
  }.entries) {
    test('EndOfWeek: $key should be $value', () {
      expect(key.endOfWeek, equals(value));
    });
  }

  test('isToday', () {
    // arrange
    // act
    final date = DateTime.now();

    // assert
    expect(date.isToday, isTrue);
  });

  test('isTomorrow', () {
    // arrange
    const durationToAdd = Duration(days: 1);

    // act
    final date = DateTime.now().add(durationToAdd);

    // assert
    expect(date.isTomorrow, isTrue);
  });

  test('withoutTime', () {
    // arrange
    final date = DateTime(2022, 1, 1, 4, 30, 30);

    // act
    // assert
    expect(date.withoutTime, equals(DateTime(2022)));
  });

  test('withoutDate', () {
    // arrange

    // act
    final date = DateTime(2022, 1, 1, 4, 30, 30);

    // assert
    expect(date.withoutTime, equals(DateTime(2022)));
  });
}
