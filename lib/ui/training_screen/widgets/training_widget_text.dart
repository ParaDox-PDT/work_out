part of '../training_screen_part.dart';

class TrainingWidgetText extends StatelessWidget {
  const TrainingWidgetText(
      {super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '$title\n',
            style: AppTypography.footnoteRegular,
            children: [
              TextSpan(
                text: text,
                style: AppTypography.footnoteRegular.copyWith(
                  color: Colors.white.withOpacity(0.5),
                ),
              )
            ]),
      ),
    );
  }
}
