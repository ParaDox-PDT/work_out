import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_out/data/model/all_training_model.dart';
import 'package:work_out/data/model/exercise_model.dart';
import 'package:work_out/data/model/training_model.dart';
import 'package:work_out/ui/router/app_routes.dart';
import 'package:work_out/utils/constants.dart';

part 'create_training_event.dart';

part 'create_training_state.dart';

class CreateTrainingBloc
    extends Bloc<CreateTrainingEvent, CreateTrainingState> {
  CreateTrainingBloc() : super(const CreateTrainingState()) {
    on<CreateTrainingMinusCycleEvent>(_onMinusCycle);
    on<CreateTrainingPlusCycleEvent>(_onPlusCycle);
    on<CreateTrainingMinusMinuteEvent>(_onMinusMinute);
    on<CreateTrainingPlusMinuteEvent>(_onPlusMinute);
    on<CreateTrainingResetEvent>(_onReset);
    on<CreateTrainingAddExerciseEvent>(_onAddExercise);
    on<CreateTrainingChangeIconEvent>(_onChangeIcon);
    on<CreateTrainingSaveEvent>(_onSaveTraining);
  }

  void _onMinusCycle(
      CreateTrainingMinusCycleEvent event, Emitter<CreateTrainingState> emit) {
    if (state.cycles > 1) emit(state.copyWith(cycles: state.cycles - 1));
  }

  void _onPlusCycle(
      CreateTrainingPlusCycleEvent event, Emitter<CreateTrainingState> emit) {
    emit(state.copyWith(cycles: state.cycles + 1));
  }

  void _onMinusMinute(
      CreateTrainingMinusMinuteEvent event, Emitter<CreateTrainingState> emit) {
    if (state.minutes > 1) emit(state.copyWith(minutes: state.minutes - 1));
  }

  void _onPlusMinute(
      CreateTrainingPlusMinuteEvent event, Emitter<CreateTrainingState> emit) {
    emit(state.copyWith(minutes: state.minutes + 1));
  }

  void _onReset(
      CreateTrainingResetEvent event, Emitter<CreateTrainingState> emit) {
    emit(state.copyWith(minutes: 1, iconIndex: 0));
  }

  void _onAddExercise(
      CreateTrainingAddExerciseEvent event, Emitter<CreateTrainingState> emit) {
    emit(
      state.copyWith(
        exercises: [
          ...state.exercises,
          ExerciseModel(
              name: event.exerciseName,
              icon: exerciseIcons[state.iconIndex],
              minute: state.minutes)
        ],
      ),
    );
  }

  void _onChangeIcon(
      CreateTrainingChangeIconEvent event, Emitter<CreateTrainingState> emit) {
    emit(state.copyWith(iconIndex: event.iconIndex));
  }

  Future<void> _onSaveTraining(
      CreateTrainingSaveEvent event, Emitter<CreateTrainingState> emit) async {
    AllTrainingModel? allTrainings = localStorage.getAllTrainings();
    allTrainings ??= AllTrainingModel(allTrainings: []);
    if (state.exercises.isNotEmpty) {
      allTrainings.allTrainings!.add(TrainingModel(
          name: event.trainingName,
          cycle: state.cycles,
          exercises: state.exercises));
      await localStorage.setAllTrainings(allTrainings);
    }
  }
}
