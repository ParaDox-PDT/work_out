part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();
}

class SettingsInitialEvent extends SettingsEvent {
  @override
  List<Object> get props => [];
}

class SettingsSoundEvent extends SettingsEvent {
  @override
  List<Object> get props => [];
}

class SettingsMusicEvent extends SettingsEvent {
  @override
  List<Object> get props => [];
}
