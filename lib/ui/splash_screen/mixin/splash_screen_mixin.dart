part of '../splash_screen_part.dart';

mixin SplashScreenMixin on State<SplashScreen> {
  _init() async {
    await Future.delayed(splashScreenDuration, () {
      context.pushReplacementNamed(Routes.home);
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
