import 'package:netglade_utils/netglade_utils.dart';
import 'package:test/test.dart';

void main() {
  test('nowWithoutTime', () {
    final date = DateTimeExtensions.nowWithoutTime();
    expect(DateTime.now().withoutTime, equals(date));
  });

  <DateTime, DateTime>{
    DateTime(2022, 11, 28): DateTime(2022, 12, 2),
    DateTime(2022, 11, 29): DateTime(2022, 12, 2),
    DateTime(2022, 11, 30): DateTime(2022, 12, 2),
    DateTime(2022, 12): DateTime(2022, 12, 2),
    DateTime(2022, 12, 2): DateTime(2022, 12, 2),
    DateTime(2022, 12, 3): DateTime(2022, 12, 9),
    DateTime(2022, 12, 4): DateTime(2022, 12, 9),
  }.forEach((key, value) {
    test('EndOfWorkWeek: $key should be $value', () {
      expect(key.endOfWorkWeek, equals(value));
    });
  });

  <DateTime, DateTime>{
    DateTime(2022, 11, 28): DateTime(2022, 12, 4),
    DateTime(2022, 11, 29): DateTime(2022, 12, 4),
    DateTime(2022, 11, 30): DateTime(2022, 12, 4),
    DateTime(2022, 12): DateTime(2022, 12, 4),
    DateTime(2022, 12, 2): DateTime(2022, 12, 4),
    DateTime(2022, 12, 3): DateTime(2022, 12, 4),
    DateTime(2022, 12, 4): DateTime(2022, 12, 4),
  }.forEach((key, value) {
    test('EndOfWeek: $key should be $value', () {
      expect(key.endOfWeek, equals(value));
    });
  });

  test('isToday', () {
    final date = DateTime.now();
    expect(date.isToday, isTrue);
  });

  test('isTomorrow', () {
    final date = DateTime.now().add(const Duration(days: 1));
    expect(date.isTomorrow, isTrue);
  });

  test('withoutTime', () {
    final date = DateTime(2022, 1, 1, 4, 30, 30);
    expect(date.withoutTime, equals(DateTime(2022)));
  });

  test('withoutDate', () {
    final date = DateTime(2022, 1, 1, 4, 30, 30);
    expect(date.withoutTime, equals(DateTime(2022)));
  });
}
