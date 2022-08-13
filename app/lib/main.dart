import 'package:app/model/system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'model/exercise.dart';
import 'model/user.dart';
import 'model/workout.dart';
import 'controller/frame.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    schemas: [
      SystemSchema,
      UserSchema,
      ExerciseSchema,
      WorkoutSchema,
    ],
    directory: dir.path,
  );
  final IsarCollection<System> systems = isar.systems;
  if (await systems.count() == 0) {
    System s = System();
    s.setSystemOfUnits(SystemOfUnits.metric);
    s.setLanguage(Language.english);
    s.setTheme(Theme.light);
    await isar.writeTxn((isar) async {
      systems.put(s);
    });
  }
  Future<System?> system = systems.get(0);

  final users = isar.users;
  if (await users.count() == 0) {
    User u = User("Your name");
    await isar.writeTxn((isar) async {
      users.put(u);
    });
  }
  Future<User?> user = users.get(0);
  final IsarCollection<Workout> workouts = isar.workouts;
  final IsarCollection<Exercise> exercises = isar.exercises;

  runApp(MyApp(
      system: system, user: user, workouts: workouts, exercises: exercises));
}

class MyApp extends StatelessWidget {
  Future<System?> system;
  Future<User?> user;
  IsarCollection<Workout> workouts;
  IsarCollection<Exercise> exercises;

  MyApp({
    Key? key,
    required Future<System?> this.system,
    required Future<User?> this.user,
    required IsarCollection<Workout> this.workouts,
    required IsarCollection<Exercise> this.exercises,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Frame(
          system: system, user: user, workouts: workouts, exercises: exercises),
    );
  }
}
