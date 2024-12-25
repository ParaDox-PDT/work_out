part of '../training_screen_part.dart';

class NextBottomSheetInfoItem extends StatelessWidget {
  const NextBottomSheetInfoItem(
      {super.key, required this.name, required this.minute});

  final String name;
  final int minute;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          leading: Text(name),
          trailing: Text(
            '$minute min',
            style: AppTypography.captionRegular.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        Divider(
          color: AppColors.grey,
        ),
      ],
    );
  }
}
