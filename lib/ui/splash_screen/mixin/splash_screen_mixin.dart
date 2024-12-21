part of '../splash_screen_part.dart';

mixin SplashScreenMixin on State<SplashScreen> {
  _init() async {
    final bool isFirstLaunch = localStorage.getFirstStart();
    await Future.delayed(splashScreenDuration, () {
      if (mounted) {
        if (isFirstLaunch) {
          context.pushReplacementNamed(Routes.onBoarding);
        } else {
          context.pushReplacementNamed(Routes.home);
        }
      }
    });
  }

  @override
  void initState() {
    _init();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    super.initState();
  }
}
