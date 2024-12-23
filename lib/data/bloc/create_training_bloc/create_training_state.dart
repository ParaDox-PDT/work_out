part of 'create_training_bloc.dart';

final class CreateTrainingState extends Equatable {
  const CreateTrainingState({
    this.cycles = 1,
    this.minutes = 1,
    this.iconIndex = 0,
    this.exercises = const [],
  });

  final int cycles;
  final int minutes;
  final int iconIndex;
  final List<ExerciseModel> exercises;

  CreateTrainingState copyWith({
    int? cycles,
    int? minutes,
    int? iconIndex,
    List<ExerciseModel>? exercises,
  }) =>
      CreateTrainingState(
        cycles: cycles ?? this.cycles,
        minutes: minutes ?? this.minutes,
        iconIndex: iconIndex ?? this.iconIndex,
        exercises: exercises ?? this.exercises,
      );

  @override
  List<Object> get props => [
        cycles,
        minutes,
        iconIndex,
        exercises,
      ];
}
