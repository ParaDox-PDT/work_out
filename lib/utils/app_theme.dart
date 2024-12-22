import 'dart:io';

import 'package:flutter/material.dart';
import 'package:work_out/ui/widgets/cupertino_back/cupertino_back_gesture.dart';
import 'package:work_out/utils/app_colors.dart';
import 'package:work_out/utils/app_typography.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.iOS:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.macOS:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.windows:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
    },
  ),
  splashFactory:
      Platform.isAndroid ? InkRipple.splashFactory : NoSplash.splashFactory,
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
    ),
  ),
  dividerTheme: const DividerThemeData(thickness: 1),
);

final ThemeData lightTheme = appTheme.copyWith(
  scaffoldBackgroundColor: AppColors.c243640,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith(
        (states) => Colors.white,
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.white.withOpacity(0.2);
          }
          return AppColors.c2EA33A;
        },
      ),
      splashFactory: InkRipple.splashFactory,
      textStyle: const WidgetStatePropertyAll(AppTypography.captionRegular),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      fixedSize: const WidgetStatePropertyAll(Size(double.infinity, 42)),
      minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 42)),
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColors.c243640,
    iconTheme: IconThemeData(
      color: AppColors.c2EA33A,
    ),
    titleTextStyle: AppTypography.bodySemiBold,
  ),
  listTileTheme: ListTileThemeData(
    tileColor: Colors.white.withOpacity(0.2),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)),
    leadingAndTrailingTextStyle: AppTypography.captionRegular
  )
);
