import 'package:intl/intl.dart';
import 'package:work_out/data/model/exercise_model.dart';

String formatCoins(int coins) {
  var formatter = NumberFormat('#,###');
  return formatter.format(coins);
}

String formatPoints(double number) {
  return '${number.toStringAsFixed(2)}x';
}

int getTotalMinutes(List<ExerciseModel> exercises) {
  int totalMinutes = 0;
  for (var exercise in exercises) {
    totalMinutes += exercise.minute!;
  }
  return totalMinutes;
}