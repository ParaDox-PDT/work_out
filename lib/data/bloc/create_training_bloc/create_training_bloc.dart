import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_training_event.dart';
part 'create_training_state.dart';

class CreateTrainingBloc extends Bloc<CreateTrainingEvent, CreateTrainingState> {
  CreateTrainingBloc() : super(const CreateTrainingState()) {
    on<CreateTrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
