part of 'on_boarding_bloc.dart';

sealed class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();
}

class OnBoardingChangePageEvent extends OnBoardingEvent {
  @override
  List<Object?> get props => [];
}
