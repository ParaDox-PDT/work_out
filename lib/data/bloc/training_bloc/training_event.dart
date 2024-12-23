part of 'training_bloc.dart';

sealed class TrainingEvent extends Equatable {
  const TrainingEvent();
}

class TrainingGetEvent extends TrainingEvent {
  const TrainingGetEvent();

  @override
  List<Object?> get props => [];
}

class TrainingDeleteEvent extends TrainingEvent {
  const TrainingDeleteEvent({required this.index});

  final int index;

  @override
  List<Object?> get props => [index];
}

class TrainingChangeNameEvent extends TrainingEvent {
  const TrainingChangeNameEvent({required this.index, required this.name});

  final int index;
  final String name;

  @override
  List<Object?> get props => [index, name];
}
