part of '../training_detail_screen_part.dart';

class TdInfoWidget extends StatelessWidget {
  const TdInfoWidget({super.key, required this.bloc, required this.totalCycle});

  final TrainingDetailBloc bloc;
  final int totalCycle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingDetailBloc, TrainingDetailState>(
      bloc: bloc,
      buildWhen: (p, c) =>
          p.currentCycle != c.currentCycle || p.leftTime != c.leftTime,
      builder: (context, state) {
        return Row(
          children: [
            TrainingWidgetText(
              title: '${state.currentCycle}/$totalCycle',
              text: 'Current cycle',
            ),
            const CustomVerticalDivider(),
            TrainingWidgetText(
              title: secondToMinute(state.leftTime),
              text: 'Time left',
            ),
          ],
        );
      },
    );
  }
}
