import 'package:default_project/data/bloc/settings_bloc/settings_bloc.dart';
import 'package:default_project/data/locale_storage/locale_storage.dart';
import 'package:default_project/data/service/injector_container.dart';
import 'package:default_project/ui/home_screen/home_screen_part.dart';
import 'package:default_project/ui/splash_screen/splash_screen_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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

    //home
    GoRoute(
      name: Routes.home,
      path: Routes.home,
      pageBuilder: (_, __) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1200),
        child: BlocProvider(
          create: (_) => sl<SettingsBloc>()..add(SettingsInitialEvent()),
          child: const HomeScreen(),
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
