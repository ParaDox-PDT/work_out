part of '../training_screen_part.dart';

class TrainingInfoWidget extends StatelessWidget {
  const TrainingInfoWidget({super.key, required this.training});
  final TrainingModel training;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TrainingWidgetText(
              title: '${getTotalMinutes(training.exercises!)} min',
              text: 'Total time'),
          const CustomVerticalDivider(),
          TrainingWidgetText(
              title: training.exercises!.length.toString(),
              text: 'exercises'),
          const CustomVerticalDivider(),
          TrainingWidgetText(
              title: 'x${training.cycle}', text: 'cycles')
        ],
      ),
    );
  }
}
