import 'package:isar/isar.dart';

part 'workout.g.dart';

@Collection()
class Workout {
  @Id()
  int? id = Isar.autoIncrement;
  String name = "Enter name";
  List<int> exercises = [];
  String description = "Enter description";
  Workout({required this.name});

  setName(String name) => this.name = name;
  String getName() => name;

  addExercise(int id) => exercises.add(id);
  removeExercise(int id) => exercises.remove(id);

  setDescription(String description) => this.description = description;
  String getDescription() => description;
}
