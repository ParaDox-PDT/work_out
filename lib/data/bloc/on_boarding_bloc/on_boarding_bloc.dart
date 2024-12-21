import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_event.dart';

part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState()) {
    on<OnBoardingChangePageEvent>(_onChangePage);
  }

  void _onChangePage(
      OnBoardingChangePageEvent event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(currentIndex: state.currentIndex + 1));
  }
}
