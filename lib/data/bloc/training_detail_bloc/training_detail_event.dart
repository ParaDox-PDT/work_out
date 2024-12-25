part of 'training_detail_bloc.dart';

sealed class TrainingDetailEvent extends Equatable {
  const TrainingDetailEvent();
}

class TrainingDetailInitialEvent extends TrainingDetailEvent {
  const TrainingDetailInitialEvent({required this.training});

  final TrainingModel training;

  @override
  List<Object?> get props => [training];
}

class TrainingDetailUpdateTimeEvent extends TrainingDetailEvent {
  @override
  List<Object?> get props => [];
}

class TrainingDetailUpdateCycleEvent extends TrainingDetailEvent {
  @override
  List<Object?> get props => [];
}

class TrainingDetailPauseEvent extends TrainingDetailEvent {
  @override
  List<Object?> get props => [];
}

class TrainingDetailStopEvent extends TrainingDetailEvent {
  @override
  List<Object?> get props => [];
}

class TrainingDetailSkipEvent extends TrainingDetailEvent {
  @override
  List<Object?> get props => [];
}
