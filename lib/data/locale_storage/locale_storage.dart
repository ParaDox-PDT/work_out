import 'package:default_project/data/model/default_model.dart';
import 'package:hive/hive.dart';

final class LocaleStorage {
  const LocaleStorage(this.box);

  final Box<dynamic> box;

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
}

HiveInterface registerHive() => Hive..registerAdapter(DefaultModelAdapter());
