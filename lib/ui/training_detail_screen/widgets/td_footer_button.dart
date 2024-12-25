part of '../training_detail_screen_part.dart';

class TDFooterButton extends StatelessWidget {
  const TDFooterButton({
    required this.icon,
    required this.text,
    this.isGreen = false,
    this.onTap,
    super.key,
  });

  final String icon;
  final String text;
  final bool isGreen;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isGreen ? AppColors.c2EA33A : AppColors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                8.g,
                Text(
                  text,
                  style: AppTypography.captionRegular.copyWith(
                    color:
                        isGreen ? Colors.white : Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
