part of '../create_training_screen_part.dart';

class StepItem extends StatelessWidget {
  const StepItem({super.key, required this.exercise});
  final ExerciseModel exercise;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SvgPicture.asset(
              exercise.icon ?? AppIcons.pushUp,
              width: 32.w,
            ),
          ),
          title: Text(
            exercise.name ?? '',
            style: AppTypography.captionSemiBold,
          ),
          trailing: Text(
            '${exercise.minute} min',
            style: AppTypography.footnoteRegular
                .copyWith(color: Colors.white.withOpacity(0.5)),
          ),
        ),
        const Divider(
          color: AppColors.c081319,
        )
      ],
    );
  }
}
