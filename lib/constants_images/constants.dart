class SvgImg {
  static const String hat = "assets/icons/Hat.svg";
  static const String time = "assets/icons/Time.svg";
  static const String review = "assets/icons/review.svg";
  static const String settings = "assets/icons/settings.svg";
  static const String schedule = "assets/icons/schedule.svg";
  static const String sun = "assets/icons/sun.svg";
  static const String moon = "assets/icons/moon.svg";
  static const String system = "assets/icons/system.svg";
}

class Img {
  static const String backGround = 'assets/images/background.png';
  static const String chisl = 'assets/images/chisl.png';
  static const String znaml = 'assets/images/znam.png';
  static const String znamlNight = 'assets/images/znamNight.png';
  static const String chislNight = 'assets/images/chislNight.png';
}

class WeekDay {
  static const List<String> days = [
    '',
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресение',
  ];
}

class WeekScheduleDay {
  static const List<String> days = [
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресение',
  ];

}

class Months {
  static final List<String> months = [
    '',
    'Января',
    'Фервраля',
    'Марта',
    'Апреля',
    'Мая',
    'Июня',
    'Июля',
    'Августа',
    'Сентября',
    'Октября',
    'Ноября',
    'Декабря',
  ];
}

class TimeLessons {
  static const List<String> times = [
    "",
    '08:30\n10:00',
    '10:10\n11:40',
    '12:00\n13:30',
    '13:50\n15:20',
    '15:30\n17:00',
    "",
  ];
  static List<TimesCall> calls = [
    TimesCall(id: 1, time: '08:30  \u279E  10:00'),
    TimesCall(id: 2, time: '10:10  \u279E  11:40'),
    TimesCall(id: 3, time: '12:00  \u279E  13:30'),
    TimesCall(id: 4, time: '13:50  \u279E  15:20'),
    TimesCall(id: 5, time: '15:30  \u279E  17:00'),
  ];
}

class WeekDayForReview {
  static const List<int> weekDay = [
    0,
    0,
    1,
    2,
    3,
    4,
    5,
    6,
  ];
}

class TimesCall {
  final int id;
  final String time;

  TimesCall({required this.id, required this.time});
}
