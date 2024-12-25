part of '../training_detail_screen_part.dart';

class TDFooter extends StatelessWidget {
  const TDFooter({super.key, required this.bloc});

  final TrainingDetailBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingDetailBloc, TrainingDetailState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isPause != p.isPause,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: Row(
            children: [
              TDFooterButton(
                icon: AppIcons.stop,
                text: 'Stop',
                onTap: () {},
              ),
              8.g,
              TDFooterButton(
                icon: AppIcons.pause,
                text: 'Pause',
                onTap: () {},
                isGreen: state.isPause,
              ),
              8.g,
              TDFooterButton(
                icon: AppIcons.skip,
                text: 'Skip',
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
