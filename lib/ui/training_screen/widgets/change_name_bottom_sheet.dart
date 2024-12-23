part of '../training_screen_part.dart';

void showChangeNameBottomSheet(BuildContext context, int index) {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.c243640,
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            24.g,
            const Text(
              'Change name',
              style: AppTypography.captionRegular,
            ),
            24.g,
            CustomTextField(
                title: 'Name',
                hintText: 'Change name',
                fillColor: AppColors.c25353E,
                controller: controller,
                focusNode: focusNode),
            48.g,
            ElevatedButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    sl<TrainingBloc>().add(TrainingChangeNameEvent(
                        index: index, name: controller.text));
                    controller.dispose();
                    focusNode.dispose();
                    context.pop();
                  }
                },
                child: const Text('Change name')),
            ElevatedButton(
              onPressed: () {
                controller.dispose();
                focusNode.dispose();
                context.pop();
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.white.withOpacity(0.2))),
              child: const Text('Cancel'),
            ),
            90.h.g,
          ],
        ),
      );
    },
  );
}
