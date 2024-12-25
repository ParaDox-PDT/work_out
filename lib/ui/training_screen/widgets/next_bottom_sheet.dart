part of '../training_screen_part.dart';

void showNextBottomSheet({
  required BuildContext context,
  required TrainingModel training,
  VoidCallback? onStartTap,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.c243640,
    builder: (context) {
      return SizedBox(
        height: context.kSize.height * 0.9,
        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: AppColors.c236F38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  21.g,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SvgPicture.asset(
                      training.exercises?.first.icon ?? AppIcons.gym,
                      width: 65.w,
                    ),
                  ),
                  8.g,
                  Text(
                    training.name ?? '',
                    style: AppTypography.headlineRegular,
                  ),
                  21.g,
                  TrainingInfoWidget(training: training),
                  16.g,
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ...List.generate(
                      training.exercises!.length,
                      (index) {
                        ExerciseModel exercise = training.exercises![index];
                        return NextBottomSheetInfoItem(
                            name: exercise.name ?? '',
                            minute: exercise.minute ?? 0);
                      },
                    ),
                  ],
                ),
              ),
            ),
            8.g,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                  onPressed: onStartTap, child: const Text('Start training')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.grey)),
                child: const Text('Cancel training'),
              ),
            ),
            22.g,
          ],
        ),
      );
    },
  );
}
