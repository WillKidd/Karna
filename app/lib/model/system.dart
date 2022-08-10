import 'package:flutter/cupertino.dart';

class System {
  Enum systemOfUnits = SystemOfUnits.metric;
  Enum language = Language.english;
  Enum theme = Theme.light;
  static final System _instance = System._();

  setSystemOfUnits(SystemOfUnits system) => systemOfUnits = system;
  getSystemOfUnits() => systemOfUnits;

  setLanguage(Language language) => this.language = language;
  getLanguage() => language;

  setTheme(Theme theme) => this.theme = theme;
  getTheme() => theme;

  System._();
  factory System() => _instance;
}

enum SystemOfUnits {
  metric,
  imperial,
}

enum Language {
  english,
  german,
}

enum Theme {
  dark,
  light,
}
