import 'package:isar/isar.dart';

part 'system.g.dart';

@Collection()
class System {
  @Id()
  int? id;
  Enum systemOfUnits = SystemOfUnits.metric;
  Enum language = Language.english;
  Enum theme = Theme.light;

  setSystemOfUnits(SystemOfUnits system) => systemOfUnits = system;
  getSystemOfUnits() => systemOfUnits;

  setLanguage(Language language) => this.language = language;
  getLanguage() => language;

  setTheme(Theme theme) => this.theme = theme;
  getTheme() => theme;
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
