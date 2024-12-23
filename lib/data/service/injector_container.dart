import 'dart:io';
import 'package:work_out/data/bloc/on_boarding_bloc/on_boarding_bloc.dart';
import 'package:work_out/data/bloc/settings_bloc/settings_bloc.dart';
import 'package:work_out/data/bloc/tab_box_bloc/tab_box_bloc.dart';
import 'package:work_out/data/locale_storage/locale_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> initApp() async {
  await initHive();
  sl.registerSingleton<LocaleStorage>(LocaleStorage(_box));
  sl.registerSingleton<SettingsBloc>(SettingsBloc());
  sl.registerSingleton<TabBoxBloc>(TabBoxBloc());
  sl.registerLazySingleton<OnBoardingBloc>(OnBoardingBloc.new);
}

Future<void> initHive() async {
  const boxName = 'default_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
