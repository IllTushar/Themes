import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  var _changeTheme = ThemeMode.light;

  ThemeMode get theme => _changeTheme;

  void setTheme(theme) {
    _changeTheme = theme;
    notifyListeners();
  }
}
