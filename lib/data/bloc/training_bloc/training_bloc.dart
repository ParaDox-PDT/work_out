import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_out/data/model/all_training_model.dart';
import 'package:work_out/data/model/training_model.dart';
import 'package:work_out/ui/router/app_routes.dart';

part 'training_event.dart';

part 'training_state.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc() : super(const TrainingState()) {
    on<TrainingGetEvent>(_onGet);
    on<TrainingDeleteEvent>(_onDelete);
    on<TrainingChangeNameEvent>(_onChangeName);
  }

  void _onGet(TrainingGetEvent event, Emitter<TrainingState> emit) {
    emit(
      state.copyWith(
        allTrainings: localStorage.getAllTrainings()?.allTrainings ?? [],
        isUpdate: !state.isUpdate,
      ),
    );
  }

  Future<void> _onDelete(
      TrainingDeleteEvent event, Emitter<TrainingState> emit) async {
    final allTrainings = state.allTrainings;
    allTrainings.removeAt(event.index);
    await localStorage
        .setAllTrainings(AllTrainingModel(allTrainings: allTrainings));
    emit(state.copyWith(isUpdate: !state.isUpdate, allTrainings: allTrainings));
  }

  Future<void> _onChangeName(
      TrainingChangeNameEvent event, Emitter<TrainingState> emit) async {
    final allTrainings = state.allTrainings;
    allTrainings[event.index].name = event.name;
    await localStorage
        .setAllTrainings(AllTrainingModel(allTrainings: allTrainings));
    emit(state.copyWith(isUpdate: !state.isUpdate, allTrainings: allTrainings));
  }
}
