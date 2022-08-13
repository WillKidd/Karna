import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'view/frame.dart';

Future<void> main() async {
  init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Frame(),
    );
  }
}

init() {
  Hive.initFlutter();
  Future<Box<dynamic>> system = Hive.openBox('system');
  Future<Box<dynamic>> user = Hive.openBox('user');
}
