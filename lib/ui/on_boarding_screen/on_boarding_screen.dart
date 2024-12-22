part of 'on_boarding_screen_part.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with OnBoardingMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  OnBoardingPageWidget(
                    image: AppImages.onBoarding1,
                    title: 'Create ideal training session',
                    text:
                        'Add exercises to your training session and follow them during workout',
                  ),
                  OnBoardingPageWidget(
                    image: AppImages.onBoarding2,
                    title: 'Keep training!',
                    text:
                        'Start timer as you start workout to know what exercise is next',
                  ),
                  OnBoardingPageWidget(
                    image: AppImages.onBoarding3,
                    title: 'See statistics',
                    text:
                        'Check your previous training sessions and analyze it through statistic ',
                  ),
                ],
              ),
            ),
            OnBoardingFooterButton(controller: controller),
            40.h.g,
          ],
        ),
      ),
    );
  }
}
