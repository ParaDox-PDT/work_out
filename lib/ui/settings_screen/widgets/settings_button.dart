part of '../settings_screen_part.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key, required this.text, this.onTap});

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.grey),
        alignment: Alignment.centerLeft,
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
