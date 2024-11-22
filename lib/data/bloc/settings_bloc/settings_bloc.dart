import 'package:default_project/ui/router/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState()) {
    on<SettingsInitialEvent>(_onInitial);
    on<SettingsSoundEvent>(_onSound);
    on<SettingsMusicEvent>(_onMusic);
  }

  void _onInitial(SettingsInitialEvent event, Emitter<SettingsState> emit) {
    bool sound = localStorage.getSound();
    bool music = localStorage.getMusic();
    emit(
      state.copyWith(
        sound: sound,
        music: music,
      ),
    );
  }

  void _onSound(SettingsSoundEvent event, Emitter<SettingsState> emit) {
    localStorage.setSound(!state.sound);
    emit(state.copyWith(sound: !state.sound));
  }

  void _onMusic(SettingsMusicEvent event, Emitter<SettingsState> emit) {
    localStorage.setMusic(!state.music);
    emit(state.copyWith(music: !state.music));
  }
}
