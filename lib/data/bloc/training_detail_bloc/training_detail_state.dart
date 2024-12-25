part of 'training_detail_bloc.dart';

final class TrainingDetailState extends Equatable {
  const TrainingDetailState({
    this.training,
    this.isPause = false,
    this.completedTasks = 0,
    this.allTasks = 0,
    this.skippedTasks = 0,
    this.totalTime = 0,
    this.leftTime = 0,
    this.currentTime = 0,
    this.currentCycle = 1,
    this.exercises = const [],
  });

  final TrainingModel? training;
  final bool isPause;
  final int completedTasks;
  final int allTasks;
  final int skippedTasks;
  final int totalTime;
  final int leftTime;
  final int currentTime;
  final List<ExerciseModel> exercises;
  final int currentCycle;

  TrainingDetailState copyWith({
    TrainingModel? training,
    bool? isPause,
    int? completedTasks,
    int? allTasks,
    int? skippedTasks,
    int? totalTime,
    int? leftTime,
    int? currentTime,
    List<ExerciseModel>? exercises,
    int? currentCycle,
  }) =>
      TrainingDetailState(
        training: training ?? this.training,
        isPause: isPause ?? this.isPause,
        completedTasks: completedTasks ?? this.completedTasks,
        allTasks: allTasks ?? this.allTasks,
        skippedTasks: skippedTasks ?? this.skippedTasks,
        totalTime: totalTime ?? this.totalTime,
        leftTime: leftTime ?? this.leftTime,
        currentTime: currentTime ?? this.currentTime,
        exercises: exercises ?? this.exercises,
        currentCycle: currentCycle ?? this.currentCycle,
      );

  @override
  List<Object?> get props => [
        training,
        isPause,
        completedTasks,
        skippedTasks,
        allTasks,
        totalTime,
        leftTime,
        currentTime,
        exercises,
        currentCycle,
      ];
}
