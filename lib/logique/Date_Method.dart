import 'package:intl/intl.dart';

String GetCurrentDate() {
  String dayname = DateFormat.EEEE().format(DateTime.now());
  String Curenttime = DateFormat.jm().format(DateTime.now());
  String CurentDate = DateFormat.yMMMd().format(DateTime.now());
  return '$Curenttime - $dayname, $CurentDate';
}

String GetStateDay() {
  var hour = DateTime.now().hour;
  if (hour < 14) {
    return 'Morning';
  }
  if (hour < 19) {
    return 'Evening';
  }

  return 'Night';
}
