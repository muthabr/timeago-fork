import 'package:timeago/src/messages/lookupmessages.dart';

/// Ukrainian messages
class UkMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'через';
  @override
  String suffixAgo() => 'тому';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'хвилину';
  @override
  String aboutAMinute(int minutes) => 'хвилину';
  @override
  String minutes(int minutes) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes) => 'годину';
  @override
  String hours(int hours) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours) => 'день';
  @override
  String days(int days) => '$days ${_convert(days, 'days')}';
  @override
  String aboutAMonth(int days) => 'місяць';
  @override
  String months(int months) => '$months ${_convert(months, 'months')}';
  @override
  String aboutAYear(int year) => 'рік';
  @override
  String years(int years) => '$years ${_convert(years, 'years')}';
  @override
  String wordSeparator() => ' ';
}

String _convert(int number, String type) {
  int mod = number % 10;
  int modH = number % 100;

  if (mod == 1 && modH != 11) {
    return switch (type) {
      'minutes' => 'хвилину',
      'hours' => 'годину',
      'days' => 'день',
      'months' => 'місяць',
      'years' => 'рік',
      _ => '',
    };
  } else if (<int>[2, 3, 4].contains(mod) &&
      !<int>[12, 13, 14].contains(modH)) {
    return switch (type) {
      'minutes' => 'хвилини',
      'hours' => 'години',
      'days' => 'дні',
      'months' => 'місяця',
      'years' => 'роки',
      _ => '',
    };
  }
  return switch (type) {
    'minutes' => 'хвилин',
    'hours' => 'годин',
    'days' => 'днів',
    'months' => 'місяців',
    'years' => 'років',
    _ => '',
  };
}

class UkShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'тільки що';
  @override
  String aboutAMinute(int minutes) => '~1 хв.';
  @override
  String minutes(int minutes) => '$minutes хв.';
  @override
  String aboutAnHour(int minutes) => '~1 год.';
  @override
  String hours(int hours) => '$hours год.';
  @override
  String aDay(int hours) => '~1 д.';
  @override
  String days(int days) => '$days д.';
  @override
  String aboutAMonth(int days) => '~1 міс.';
  @override
  String months(int months) => '$months міс.';
  @override
  String aboutAYear(int year) => '~1 р.';
  @override
  String years(int years) => '$years р.';
  @override
  String wordSeparator() => ' ';
}
