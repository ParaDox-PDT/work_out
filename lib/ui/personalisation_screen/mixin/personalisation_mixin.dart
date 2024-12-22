part of '../personalisation_screen_part.dart';

mixin PersonalisationMixin on State<PersonalisationScreen> {
  late final PersonalisationBloc bloc;

  void _init() {
    bloc = context.read<PersonalisationBloc>();
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
