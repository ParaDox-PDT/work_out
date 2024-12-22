part of 'personalisation_bloc.dart';

sealed class PersonalisationEvent extends Equatable {
  const PersonalisationEvent();
}

class PersonalisationChangePageEvent extends PersonalisationEvent {
  @override
  List<Object> get props => [];
}
