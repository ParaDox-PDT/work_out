part of '../create_training_screen_part.dart';

class ChangeNumbersWidget extends StatelessWidget {
  const ChangeNumbersWidget(
      {super.key,
      required this.title,
      required this.number,
      this.onMinusTap,
      this.onPlusTap});

  final String title;
  final String number;
  final VoidCallback? onMinusTap;
  final VoidCallback? onPlusTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.footnoteRegular,
        ),
        8.g,
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    number,
                    textAlign: TextAlign.center,
                    style: AppTypography.captionRegular,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(color: AppColors.c243640)),
                ),
                child: InkWell(
                  onTap: onMinusTap,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9, vertical: 25.h),
                    child: SvgPicture.asset(AppIcons.minus),
                  ),
                ),
              ),
              InkWell(
                onTap: onPlusTap,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 20.h),
                  child: SvgPicture.asset(AppIcons.plus),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
