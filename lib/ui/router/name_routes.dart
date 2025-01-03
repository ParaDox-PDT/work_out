part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String initial = '/';

  // main
  static const String home = '/home';
  static const String onBoarding = '/on_boarding';
  static const String personalisation = '/personalisation';
  static const String createTraining = '/create_training';
  static const String preparation = '/preparation';
  static const String trainingDetail = '/training_detail';

}
