part of '../create_training_screen_part.dart';

mixin CreateTrainingMixin on State<CreateTrainingScreen> {
  late final CreateTrainingBloc bloc;

  void _init() {
    bloc = context.read<CreateTrainingBloc>();
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
