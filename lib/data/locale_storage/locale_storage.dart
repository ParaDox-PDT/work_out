import 'package:work_out/data/model/all_training_model.dart';
import 'package:work_out/data/model/exercise_model.dart';
import 'package:hive/hive.dart';
import 'package:work_out/data/model/training_model.dart';

final class LocaleStorage {
  const LocaleStorage(this.box);

  final Box<dynamic> box;

  /// SAVE AND GET FIRST START
  Future<void> setFirstStart(bool firstStart) async {
    await box.put('first_start', firstStart);
  }

  bool getFirstStart() => box.get('first_start', defaultValue: true);

  /// SAVE AND GET SOUND
  Future<void> setSound(bool sound) async {
    await box.put('sound', sound);
  }

  bool getSound() => box.get('sound', defaultValue: true);

  /// SAVE AND GET MUSIC
  Future<void> setMusic(bool music) async {
    await box.put('music', music);
  }

  bool getMusic() => box.get('music', defaultValue: true);

  /// SAVE AND GET TRAININGS
  Future<void> setAllTrainings(AllTrainingModel allTrainings) async {
    await box.put('all_trainings', allTrainings);
  }

  AllTrainingModel? getAllTrainings() =>
      box.get('all_trainings', defaultValue: null);
}

HiveInterface registerHive() => Hive
  ..registerAdapter(ExerciseModelAdapter())
  ..registerAdapter(TrainingModelAdapter())
  ..registerAdapter(AllTrainingModelAdapter());
