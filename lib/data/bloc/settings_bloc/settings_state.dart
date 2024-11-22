part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  const SettingsState({
    this.sound = false,
    this.music = false,
  });

  final bool sound;
  final bool music;

  SettingsState copyWith({
    bool? sound,
    bool? music,
    bool? vibration,
  }) {
    return SettingsState(
      sound: sound ?? this.sound,
      music: music ?? this.music,
    );
  }

  @override
  List<Object> get props => [
        sound,
        music,
      ];
}
