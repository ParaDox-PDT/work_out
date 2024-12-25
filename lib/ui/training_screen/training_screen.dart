part of 'training_screen_part.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> with TrainingMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<TrainingBloc, TrainingState>(
          bloc: bloc,
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return Column(
              children: [
                48.g,
                ...List.generate(
                  state.allTrainings.length,
                  (index) {
                    return TrainingItem(
                      training: state.allTrainings[index],
                      onMoreTap: () {
                        showMoreBottomSheet(context: context, index: index);
                      },
                      onNextTap: () {
                        showNextBottomSheet(
                            context: context,
                            training: state.allTrainings[index],
                            onStartTap: () {
                              context.pop();
                              context.pushNamed(
                                Routes.trainingDetail,
                                extra: state.allTrainings[index],
                              );
                            });
                      },
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(Routes.createTraining);
                  },
                  child: const Text('Create training'),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
