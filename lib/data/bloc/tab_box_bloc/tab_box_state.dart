part of 'tab_box_bloc.dart';

final class TabBoxState extends Equatable {
  const TabBoxState({this.currentIndex = 0});

  final int currentIndex;

  TabBoxState copyWith({
    int? currentIndex,
  }) =>
      TabBoxState(
        currentIndex: currentIndex ?? this.currentIndex,
      );

  @override
  List<Object> get props => [currentIndex];
}
