import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_out/data/model/exercise_model.dart';
import 'package:work_out/data/model/training_model.dart';
import 'package:work_out/utils/functions/base_functions.dart';

part 'training_detail_event.dart';

part 'training_detail_state.dart';

class TrainingDetailBloc
    extends Bloc<TrainingDetailEvent, TrainingDetailState> {
  TrainingDetailBloc() : super(const TrainingDetailState()) {
    on<TrainingDetailInitialEvent>(_onInitial);
  }

  void _onInitial(
      TrainingDetailInitialEvent event, Emitter<TrainingDetailState> emit) {
    final TrainingModel training = event.training;
    final int leftTime =
        training.cycle! * (60 * getTotalMinutes(training.exercises!));
    final int allTasks = training.cycle! * training.exercises!.length;
    emit(state.copyWith(
      training: training,
      leftTime: leftTime,
      allTasks: allTasks,
    ));
    final List<ExerciseModel> exercises = [];
    for (int i = 0; i < event.training.exercises!.length - 1; i++) {
      exercises.addAll(event.training.exercises!);
    }
    emit(state.copyWith(
      exercises: exercises,
    ));
  }
}
