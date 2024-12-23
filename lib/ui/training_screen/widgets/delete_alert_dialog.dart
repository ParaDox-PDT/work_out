part of '../training_screen_part.dart';

void showDeleteAlertDialog(
    {required BuildContext context, VoidCallback? onDelete}) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(
          'Delete training?',
          style: AppTypography.bodySemiBold.copyWith(color: Colors.black),
        ),
        content: Text(
          'Are you sure you want to delete training?',
          style: AppTypography.footnoteRegular.copyWith(
            color: Colors.black,
          ),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              'Cancel',
              style:
                  AppTypography.bodyRegular.copyWith(color: AppColors.c007AFF),
            ),
            onPressed: () {
              context.pop();
            },
          ),
          CupertinoDialogAction(
            onPressed: onDelete,
            isDestructiveAction: true,
            child: const Text('Delete'),
          ),
        ],
      );
    },
  );
}
