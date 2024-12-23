import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tab_box_event.dart';

part 'tab_box_state.dart';

class TabBoxBloc extends Bloc<TabBoxEvent, TabBoxState> {
  TabBoxBloc() : super(const TabBoxState()) {
    on<TabBoxChangeEvent>(_onChange);
  }

  void _onChange(TabBoxChangeEvent event, Emitter<TabBoxState> emit) {
    emit(state.copyWith(currentIndex: event.currentIndex));
  }
}
