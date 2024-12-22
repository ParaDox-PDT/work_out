import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'personalisation_event.dart';

part 'personalisation_state.dart';

class PersonalisationBloc
    extends Bloc<PersonalisationEvent, PersonalisationState> {
  PersonalisationBloc() : super(const PersonalisationState()) {
    on<PersonalisationChangePageEvent>(_onChangePage);
  }

  void _onChangePage(PersonalisationChangePageEvent event,
      Emitter<PersonalisationState> emit) {
    emit(state.copyWith(page: state.page + 1));
  }
}
