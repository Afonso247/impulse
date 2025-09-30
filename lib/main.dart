import 'package:flutter/material.dart';

import 'package:impulse/impulse.dart';

// ColorScheme
const brightness = Brightness.light;
const primary = Color(0xFF0175C2);
const onPrimary = Color(0xFFFFFFFF);
const secondary = Color(0xFFC0E0FF);
const onSecondary = Color(0xFF000000);
const error = Color(0xFFB00020);
const onError = Color(0xFFFFFFFF);
const surface = Color(0xFFFAFAFA);
const onSurface = Color(0xFF000000);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: const ColorScheme(
          brightness: brightness,
          primary: primary,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          error: error,
          onError: onError,
          surface: surface,
          onSurface: onSurface,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: primary,
          foregroundColor: onPrimary,
        ),
        cardTheme: const CardThemeData().copyWith(
          color: secondary,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(primary),
            foregroundColor: WidgetStateProperty.all(onPrimary),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
            color: onSurface,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: const TextStyle(
            color: onSurface,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: const TextStyle(
            color: onSurface,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const Impulse(),
    ),
  );
}
