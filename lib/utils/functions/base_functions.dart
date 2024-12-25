import 'package:intl/intl.dart';
import 'package:work_out/data/model/exercise_model.dart';
import 'package:work_out/utils/app_icons.dart';

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

String getTDIcon({required String icon, bool isFirst = false}) {
  switch (icon) {
    case AppIcons.pushUp:
      return isFirst ? AppIcons.pushUpGreenTD : AppIcons.pushUpTD;
    case AppIcons.squat:
      return isFirst ? AppIcons.squatGreenTD : AppIcons.squatTD;
    case AppIcons.yoga:
      return isFirst ? AppIcons.yogaGreenTD : AppIcons.yogaTD;
    case AppIcons.soccer:
      return isFirst ? AppIcons.soccerGreenTD : AppIcons.soccerTD;
    case AppIcons.running:
      return isFirst ? AppIcons.runningGreenTD : AppIcons.runningTD;
    case AppIcons.gym:
      return isFirst ? AppIcons.gymGreenTD : AppIcons.gymTD;
    default:
      return AppIcons.gymTD;
  }
}

String secondToMinute(int seconds){
  Duration duration = Duration(seconds: seconds);
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "$twoDigitMinutes:$twoDigitSeconds";
}