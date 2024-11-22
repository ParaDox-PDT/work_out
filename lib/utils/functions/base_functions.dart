import 'package:intl/intl.dart';

String formatCoins(int coins) {
  var formatter = NumberFormat('#,###');
  return formatter.format(coins);
}

String formatPoints(double number) {
  return '${number.toStringAsFixed(2)}x';
}
