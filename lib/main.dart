import 'package:flutter/material.dart';
import 'package:impulse/impulse.dart';

// ColorScheme Light
const brightnessLight = Brightness.light;
const primaryLight = Color(0xFF0175C2);
const onPrimaryLight = Color(0xFFFFFFFF);
const secondaryLight = Color(0xFFC0E0FF);
const onSecondaryLight = Color(0xFF000000);
const errorLight = Color(0xFFB00020);
const onErrorLight = Color(0xFFFFFFFF);
const surfaceLight = Color(0xFFFAFAFA);
const onSurfaceLight = Color(0xFF000000);

// ColorScheme Dark
const brightnessDark = Brightness.dark;
const primaryDark = Color(0xFF4FC3F7);
const onPrimaryDark = Color(0xFF000000);
const secondaryDark = Color(0xFF1E3A5F);
const onSecondaryDark = Color(0xFFFFFFFF);
const errorDark = Color(0xFFCF6679);
const onErrorDark = Color(0xFF000000);
const surfaceDark = Color(0xFF121212);
const onSurfaceDark = Color(0xFFFFFFFF);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: const ColorScheme(
          brightness: brightnessLight,
          primary: primaryLight,
          onPrimary: onPrimaryLight,
          secondary: secondaryLight,
          onSecondary: onSecondaryLight,
          error: errorLight,
          onError: onErrorLight,
          surface: surfaceLight,
          onSurface: onSurfaceLight,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: primaryLight,
          foregroundColor: onPrimaryLight,
        ),
        cardTheme: const CardThemeData().copyWith(
          color: secondaryLight,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(primaryLight),
            foregroundColor: WidgetStateProperty.all(onPrimaryLight),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
            color: onSurfaceLight,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: const TextStyle(
            color: onSurfaceLight,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: const TextStyle(
            color: onSurfaceLight,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData().copyWith(
        colorScheme: const ColorScheme(
          brightness: brightnessDark,
          primary: primaryDark,
          onPrimary: onPrimaryDark,
          secondary: secondaryDark,
          onSecondary: onSecondaryDark,
          error: errorDark,
          onError: onErrorDark,
          surface: surfaceDark,
          onSurface: onSurfaceDark,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: primaryDark,
          foregroundColor: onPrimaryDark,
        ),
        cardTheme: const CardThemeData().copyWith(
          color: secondaryDark,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(primaryDark),
            foregroundColor: WidgetStateProperty.all(onPrimaryDark),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
            color: onSurfaceDark,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: const TextStyle(
            color: onSurfaceDark,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: const TextStyle(
            color: onSurfaceDark,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const Impulse(),
    ),
  );
}
