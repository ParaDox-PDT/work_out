part of 'create_training_bloc.dart';

sealed class CreateTrainingEvent extends Equatable {
  const CreateTrainingEvent();
}

class CreateTrainingMinusCycleEvent extends CreateTrainingEvent {
  const CreateTrainingMinusCycleEvent();

  @override
  List<Object?> get props => [];
}

class CreateTrainingPlusCycleEvent extends CreateTrainingEvent {
  const CreateTrainingPlusCycleEvent();

  @override
  List<Object?> get props => [];
}

class CreateTrainingMinusMinuteEvent extends CreateTrainingEvent {
  const CreateTrainingMinusMinuteEvent();

  @override
  List<Object?> get props => [];
}

class CreateTrainingPlusMinuteEvent extends CreateTrainingEvent {
  const CreateTrainingPlusMinuteEvent();

  @override
  List<Object?> get props => [];
}

class CreateTrainingResetEvent extends CreateTrainingEvent {
  const CreateTrainingResetEvent();

  @override
  List<Object?> get props => [];
}
