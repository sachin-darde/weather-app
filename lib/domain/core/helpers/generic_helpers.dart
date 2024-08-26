import 'package:intl/intl.dart';

class GenericHelpers {
  static String dateFormatter(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(date.year, date.month, date.day);

    if (targetDate == today) {
      return 'Today, ${DateFormat('dd MMM yy').format(date)}';
    } else if (targetDate == today.subtract(const Duration(days: 1))) {
      return 'Yesterday, ${DateFormat('dd MMM yy').format(date)}';
    } else if (targetDate == today.add(const Duration(days: 1))) {
      return 'Tomorrow, ${DateFormat('dd MMM yy').format(date)}';
    } else {
      return DateFormat('EEE, dd MMM yy')
          .format(date); // e.g., "Mon, 10 Aug 24"
    }
  }
}
