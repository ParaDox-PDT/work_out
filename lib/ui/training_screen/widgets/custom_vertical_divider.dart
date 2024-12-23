part of '../training_screen_part.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
      ),
      child: SizedBox(
        width: 1,
        height: 37.h,
      ),
    );
  }
}
