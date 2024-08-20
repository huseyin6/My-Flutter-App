import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        appBarTheme: AppBarTheme(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          centerTitle: true,
          backgroundColor: Colors.purple[200],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 4,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green[300]),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.blueMenia)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: const CheckboxThemeData(
            fillColor: WidgetStatePropertyAll(Colors.green), side: BorderSide(color: Colors.green)),
        textTheme:
            ThemeData.light().textTheme.copyWith(labelSmall: TextStyle(fontSize: 16, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
