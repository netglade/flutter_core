import 'package:clock/clock.dart';

extension DateTimeExtensions on DateTime {
  /// Returns DateTime.now() without time part.
  static DateTime nowWithoutTime() => clock.now().withoutTime;

  /// Returns end of week of relative to now.
  static DateTime endOfWeekOfNow() => clock.now().endOfWeek;

  /// Returns next 'friday' date.
  DateTime get endOfWorkWeek {
    return add(Duration(days: (DateTime.friday - weekday) % 7));
  }

  /// Returns next 'sunday' date.
  DateTime get endOfWeek => add(Duration(days: DateTime.sunday - weekday));

  /// Returns whether this and [date] are equal without comparing time part.
  bool isSameDateWithoutTime(DateTime date) => year == date.year && month == date.month && day == date.day;

  /// Returns if current date is weekend (Saturday, Sunday).
  bool get isWeekend => [6, 7].contains(weekday);

  /// Returns if date is equal to `DateTime.now()` without time part.
  bool get isToday => isSameDateWithoutTime(clock.now());

  bool get isYesterday {
    final yesterday = clock.now().subtract(const Duration(days: 1));

    return isSameDateWithoutTime(yesterday);
  }

  bool get isTomorrow {
    final tomorrow = clock.now().add(const Duration(days: 1));

    return isSameDateWithoutTime(tomorrow);
  }

  /// Returns same date but without time part.
  DateTime get withoutTime => DateTime(year, month, day);

  /// Retuns Date set to equatal 0.0.1900 with time part from this date.
  DateTime get onlyTime => DateTime(1900, 0, 0, hour, minute);

  /// Returns true if this is before or is the same as [other].
  // ignore: prefer-boolean-prefixes, dont wannta change public API
  bool isBeforeOrSame(DateTime other, {bool includeTime = false}) {
    if (includeTime) {
      return isBefore(other) || this == other;
    }

    return withoutTime.isBefore(other.withoutTime) || isSameDateWithoutTime(other);
  }

  /// Returns true if this is after os is the same as [other].
  // ignore: prefer-boolean-prefixes, dont wannta change public API
  bool isAfterOrSame(DateTime other, {bool includeTime = false}) {
    return other.isBeforeOrSame(this, includeTime: includeTime);
  }

  DateSpecification get dateSpecification {
    if (isToday) return DateSpecification.today;

    if (isTomorrow) return DateSpecification.tomorrow;

    if (day > (clock.now().day + 1) && day <= clock.now().endOfWeek.day) return DateSpecification.endOfWeek;

    if (day > clock.now().endOfWeek.day) return DateSpecification.nextWeek;

    return DateSpecification.past;
  }
}

// ignore: prefer-single-declaration-per-file, this can be here
enum DateSpecification {
  endOfWeek,
  nextWeek,
  past,
  today,
  tomorrow,
}
