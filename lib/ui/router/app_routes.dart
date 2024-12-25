import 'package:work_out/data/bloc/create_training_bloc/create_training_bloc.dart';
import 'package:work_out/data/bloc/on_boarding_bloc/on_boarding_bloc.dart';
import 'package:work_out/data/bloc/personalisation_bloc/personalisation_bloc.dart';
import 'package:work_out/data/bloc/settings_bloc/settings_bloc.dart';
import 'package:work_out/data/bloc/training_bloc/training_bloc.dart';
import 'package:work_out/data/bloc/training_detail_bloc/training_detail_bloc.dart';
import 'package:work_out/data/locale_storage/locale_storage.dart';
import 'package:work_out/data/model/training_model.dart';
import 'package:work_out/data/service/injector_container.dart';
import 'package:work_out/ui/create_training_screen/create_training_screen_part.dart';
import 'package:work_out/ui/on_boarding_screen/on_boarding_screen_part.dart';
import 'package:work_out/ui/personalisation_screen/personalisation_screen_part.dart';
import 'package:work_out/ui/preparation_screen/preparation_screen_part.dart';
import 'package:work_out/ui/splash_screen/splash_screen_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:work_out/ui/tab_box/tab_box_part.dart';
import 'package:work_out/ui/training_detail_screen/training_detail_screen_part.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final localStorage = sl<LocaleStorage>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.initial,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.initial,
      name: Routes.initial,
      builder: (_, __) => const SplashScreen(),
    ),

    // personalisation

    GoRoute(
      name: Routes.personalisation,
      path: Routes.personalisation,
      builder: (_, __) => BlocProvider(
        create: (_) => PersonalisationBloc(),
        child: const PersonalisationScreen(),
      ),
    ),

    // preparation

    GoRoute(
      name: Routes.preparation,
      path: Routes.preparation,
      builder: (_, __) => const PreparationScreen(),
    ),

    //create training
    GoRoute(
      name: Routes.createTraining,
      path: Routes.createTraining,
      builder: (_, __) => BlocProvider(
        create: (_) => CreateTrainingBloc(),
        child: const CreateTrainingScreen(),
      ),
    ),

    //training detail
    GoRoute(
      name: Routes.trainingDetail,
      path: Routes.trainingDetail,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<TrainingDetailBloc>(),
        child:  TrainingDetailScreen(training: __.extra as TrainingModel,),
      ),
    ),
    //on boarding
    GoRoute(
      name: Routes.onBoarding,
      path: Routes.onBoarding,
      pageBuilder: (_, __) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1200),
        child: BlocProvider(
          create: (_) => sl<OnBoardingBloc>(),
          child: const OnBoardingScreen(),
        ),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        ),
      ),
    ),

    //home
    GoRoute(
      name: Routes.home,
      path: Routes.home,
      pageBuilder: (_, __) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1200),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (_) => sl<SettingsBloc>()..add(SettingsInitialEvent())),
            BlocProvider(
                create: (_) =>
                    sl<TrainingBloc>()..add(const TrainingGetEvent())),
          ],
          child: const TabBox(),
        ),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        ),
      ),
    ),
  ],
);

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
      : super(
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              builder(context),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
