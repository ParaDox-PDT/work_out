part of '../training_detail_screen_part.dart';

class TDBody extends StatelessWidget {
  const TDBody({super.key, required this.bloc});

  final TrainingDetailBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingDetailBloc, TrainingDetailState>(
      bloc: bloc,
      buildWhen: (p, c) => p != c,
      builder: (context, state) {
        return Column(
          children: [
            SvgPicture.asset(getTDIcon(
                icon: state.exercises.isNotEmpty
                    ? state.exercises.first.icon!
                    : AppIcons.pushUpGreenTD,
                isFirst: true)),
            16.g,
            Text(secondToMinute(state.currentTime), style: AppTypography.largeRegular),
            Text(
              state.exercises.isNotEmpty ? state.exercises.first.name! : '',
              style: AppTypography.headlineRegular.copyWith(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        );
      },
    );
  }
}
