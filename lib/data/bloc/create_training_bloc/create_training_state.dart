part of 'create_training_bloc.dart';

final class CreateTrainingState extends Equatable {
  const CreateTrainingState({
    this.cycles = 0,
    this.minutes = 0,
    this.iconIndex = 0,
  });

  final int cycles;
  final int minutes;
  final int iconIndex;

  @override
  List<Object> get props => [];
}
