import 'package:hive_flutter/hive_flutter.dart';

class Init {
  Init() {
    Hive.initFlutter();
    var system = Hive.openBox('system');
  }
}
