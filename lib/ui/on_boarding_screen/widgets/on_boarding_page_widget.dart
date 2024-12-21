part of '../on_boarding_screen_part.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.text});

  final String image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          32.h.g,
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.c2EA33A, width: 4),
            ),
            child: SizedBox(
              height: 418.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                    child: Image.asset(
                      image,
                      width: 255.w,
                    ),
                  )
                ],
              ),
            ),
          ),
          70.h.g,
          Text(
            title,
            style: AppTypography.headlineRegular,
          ),
          16.g,
          Text(
            text,
            textAlign: TextAlign.center,
            style: AppTypography.bodyRegular.copyWith(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
