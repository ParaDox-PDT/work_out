part of '../create_training_screen_part.dart';

class AddStepButton extends StatelessWidget {
  const AddStepButton({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return   DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: InkWell(
        onTap:onTap,
        borderRadius: BorderRadius.circular(6),
        child: Padding(
          padding:
          EdgeInsets.symmetric(vertical: 10, horizontal: 52.w),
          child: const Text(
            'Add step',
            style: AppTypography.captionRegular,
          ),
        ),
      ),
    );
  }
}
