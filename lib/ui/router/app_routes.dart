import 'package:work_out/data/bloc/on_boarding_bloc/on_boarding_bloc.dart';
import 'package:work_out/data/bloc/settings_bloc/settings_bloc.dart';
import 'package:work_out/data/locale_storage/locale_storage.dart';
import 'package:work_out/data/service/injector_container.dart';
import 'package:work_out/ui/home_screen/home_screen_part.dart';
import 'package:work_out/ui/on_boarding_screen/on_boarding_screen_part.dart';
import 'package:work_out/ui/splash_screen/splash_screen_part.dart';
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
    //
    // GoRoute(
    //   name: Routes.onBoarding,
    //   path: Routes.onBoarding,
    //   pageBuilder: (_, __) => _buildSlidePage(
    //       child: BlocProvider(
    //     create: (context) => sl<OnBoardingBloc>(),
    //     child: const OnBoardingScreen(),
    //   )),
    // ),

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

Page<void> _buildSlidePage({required Widget child}) {
  return CustomTransitionPage(
    transitionDuration: const Duration(milliseconds: 500),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
