part of '../training_detail_screen_part.dart';

mixin TrainingDetailMixin on State<TrainingDetailScreen> {
  late final TrainingDetailBloc bloc;

  void _init() {
    bloc = TrainingDetailBloc()
      ..add(TrainingDetailInitialEvent(training: widget.training));
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
