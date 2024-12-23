part of '../training_screen_part.dart';

void showMoreBottomSheet({
  required BuildContext context,
  required int index,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.c243640,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            24.g,
            const Text(
              'Select option',
              style: AppTypography.captionRegular,
            ),
            44.g,
            ElevatedButton(
              onPressed: () {
                context.pop();
                showChangeNameBottomSheet(context, index);
              },
              child: const Text('Change name'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Colors.white.withOpacity(0.2)),
              ),
              onPressed: () {
                context.pop();
                showDeleteAlertDialog(
                    context: context,
                    onDelete: () {
                      sl<TrainingBloc>().add(TrainingDeleteEvent(index: index));
                      context.pop();
                    });
              },
              child: Text(
                'Delete training',
                style: AppTypography.captionRegular
                    .copyWith(color: AppColors.cEE3B3B),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Colors.white.withOpacity(0.2)),
              ),
              onPressed: () {
                context.pop();
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      );
    },
  );
}
