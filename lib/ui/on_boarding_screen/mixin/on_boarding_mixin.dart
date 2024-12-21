part of '../on_boarding_screen_part.dart';

mixin OnBoardingMixin on State<OnBoardingScreen> {
  late final OnBoardingBloc bloc;
  late final PageController controller;

  void _init() {
    bloc = sl<OnBoardingBloc>();
    controller = PageController();
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    bloc.close();
    super.dispose();
  }
}
