part of 'splash_screen_part.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SplashScreenMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.c236F38,
      body: Center(
        child: Image.asset(
          AppImages.splashImg,
          width: 216.w,
        ),
      ),
    );
  }
}
