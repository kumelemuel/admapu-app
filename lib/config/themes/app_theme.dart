import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF555555);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class Apptheme {
  final int selectedColor;
  final bool isDark;

  Apptheme({this.selectedColor = 0, this.isDark = false})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: isDark ? Brightness.dark : Brightness.light);
  }
}
