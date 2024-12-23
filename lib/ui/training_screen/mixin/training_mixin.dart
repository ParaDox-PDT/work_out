part of '../training_screen_part.dart';

mixin TrainingMixin on State<TrainingScreen> {
  late final TrainingBloc bloc;

  void _init() {
    print(
        'LISTT LENGTH ++++++>${localStorage.getAllTrainings()?.allTrainings?.length ?? 0}');
    bloc = sl<TrainingBloc>()..add(const TrainingGetEvent());
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
