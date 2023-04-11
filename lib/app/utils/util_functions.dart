class UtilFunctions {
  static bool isValidNumber(String number) {
    return number.isNotEmpty &&
        int.parse(number.substring(0, 1)) > 5 &&
        number.length == 10;
  }

  static int getAge(DateTime birthDate) {
    final today = DateTime.now();
    var age = today.year - birthDate.year;
    final month1 = today.month;
    final month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      final day1 = today.day;
      final day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    if (age < 0) return 0;
    return age;
  }
}
