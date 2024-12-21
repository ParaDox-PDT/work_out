part of '../on_boarding_screen_part.dart';

class OnBoardingFooterButton extends StatelessWidget {
  const OnBoardingFooterButton({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocListener<OnBoardingBloc, OnBoardingState>(
        bloc: sl<OnBoardingBloc>(),
        listenWhen: (p, c) => p.currentIndex != c.currentIndex,
        listener: (context, state) {
          if (state.currentIndex <= 2) {
            controller.animateToPage(state.currentIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          }
        },
        child: ElevatedButton(
          onPressed: () {
            sl<OnBoardingBloc>().add(OnBoardingChangePageEvent());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Continue'),
              10.g,
              SvgPicture.asset(AppIcons.nextArrow)
            ],
          ),
        ),
      ),
    );
  }
}
