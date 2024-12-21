part of 'on_boarding_bloc.dart';

final class OnBoardingState extends Equatable {
  const OnBoardingState({this.currentIndex = 0});

  final int currentIndex;

  OnBoardingState copyWith({
    int? currentIndex,
  }) =>
      OnBoardingState(
        currentIndex: currentIndex ?? this.currentIndex,
      );

  @override
  List<Object> get props => [currentIndex];
}
