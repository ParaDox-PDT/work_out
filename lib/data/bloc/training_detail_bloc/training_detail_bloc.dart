import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'training_detail_event.dart';

part 'training_detail_state.dart';

class TrainingDetailBloc
    extends Bloc<TrainingDetailEvent, TrainingDetailState> {
  TrainingDetailBloc() : super(const TrainingDetailState()) {
    on<TrainingDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
