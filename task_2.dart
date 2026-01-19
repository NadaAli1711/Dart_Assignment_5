class Holiday {
  String name;
  int day;
  String month;
  Holiday(this.name, this.day, this.month);
  static bool isSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    double sum = 0;
    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].day;
    }
    return sum / holidays.length;
  }
}

void main() {
  Holiday h1 = Holiday('Independence Day', 4, 'July');
  Holiday h2 = Holiday('Friday', 16, 'feb');
  List<Holiday> holidays = [h1, h2];
  print(Holiday.isSameMonth(h1, h2));
  print(Holiday.avgDate(holidays));
}
