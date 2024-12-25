part of 'training_detail_screen_part.dart';

class TrainingDetailScreen extends StatefulWidget {
  const TrainingDetailScreen({super.key, required this.training});

  final TrainingModel training;

  @override
  State<TrainingDetailScreen> createState() => _TrainingDetailScreenState();
}

class _TrainingDetailScreenState extends State<TrainingDetailScreen>
    with TrainingDetailMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Column(
        children: [
          TDIcons(bloc: bloc),
          24.g,
          TdInfoWidget(bloc: bloc, totalCycle: widget.training.cycle ?? 0),
          const Spacer(),
          TDBody(bloc: bloc),
          const Spacer(
            flex: 2,
          ),
          TDFooter(bloc: bloc),
        ],
      ),
    );
  }
}
