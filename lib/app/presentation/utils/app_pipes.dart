import 'package:intl/intl.dart';

abstract class AppPipes {
  static String formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('d MMM yyyy').format(dateTime);
  }
}
