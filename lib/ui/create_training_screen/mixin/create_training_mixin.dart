part of '../create_training_screen_part.dart';

mixin CreateTrainingMixin on State<CreateTrainingScreen> {
  late final CreateTrainingBloc bloc;
  late final TextEditingController nameController;

  late final FocusNode nameFocusNode;

  void _init() {
    bloc = context.read<CreateTrainingBloc>();
    nameController = TextEditingController();
    nameFocusNode = FocusNode();
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
