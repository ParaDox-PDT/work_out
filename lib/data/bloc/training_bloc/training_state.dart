part of 'training_bloc.dart';

final class TrainingState extends Equatable {
  const TrainingState({this.allTrainings = const [], this.isUpdate = false});

  final List<TrainingModel> allTrainings;
  final bool isUpdate;

  TrainingState copyWith({
    List<TrainingModel>? allTrainings,
    bool? isUpdate,
  }) =>
      TrainingState(
        allTrainings: allTrainings ?? this.allTrainings,
        isUpdate: isUpdate ?? this.isUpdate,
      );

  @override
  List<Object?> get props => [allTrainings, isUpdate];
}
