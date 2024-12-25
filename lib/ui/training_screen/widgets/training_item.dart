part of '../training_screen_part.dart';

class TrainingItem extends StatelessWidget {
  const TrainingItem(
      {super.key, this.onMoreTap, this.onNextTap, required this.training});

  final VoidCallback? onMoreTap;
  final VoidCallback? onNextTap;
  final TrainingModel training;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 27.h),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: onMoreTap,
                        icon: SvgPicture.asset(AppIcons.more),
                      ),
                      IconButton(
                        onPressed: onNextTap,
                        icon: SvgPicture.asset(AppIcons.nextArrow1),
                      )
                    ],
                  ),
                  4.g,
                  Text(
                    training.name ?? '',
                    style: AppTypography.bodyRegular,
                  ),
                  8.g,
                  TrainingInfoWidget(training: training),
                ],
              ),
            ),
          ),
          ClipOval(
            child: SvgPicture.asset(
              training.exercises?.first.icon ?? AppIcons.pushUp,
              width: 55.w,
            ),
          ),
        ],
      ),
    );
  }
}
