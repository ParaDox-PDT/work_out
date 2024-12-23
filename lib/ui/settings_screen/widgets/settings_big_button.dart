part of '../settings_screen_part.dart';

class SettingsBigButton extends StatelessWidget {
  const SettingsBigButton(
      {super.key, required this.title, required this.icon, this.onTap});

  final String title;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ZoomTapAnimation(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SvgPicture.asset(icon),
                8.g,
                Text(title, style: AppTypography.captionRegular)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
