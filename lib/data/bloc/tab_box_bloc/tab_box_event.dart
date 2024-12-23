part of 'tab_box_bloc.dart';

sealed class TabBoxEvent extends Equatable {
  const TabBoxEvent();
}

class TabBoxChangeEvent extends TabBoxEvent {
  const TabBoxChangeEvent({required this.currentIndex});

  final int currentIndex;

  @override
  List<Object> get props => [currentIndex];
}
