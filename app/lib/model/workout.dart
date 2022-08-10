import 'exercise.dart';

class Workout {
  String name = "Enter name";
  List<Exercise> exercises = [];
  String description = "Enter description";
  Workout({required this.name});

  setName(String name) => this.name = name;
  String getName() => name;

  addExercise(Exercise exercise) => exercises.add(exercise);
  removeExercise(Exercise exercise) => exercises.remove(exercise);

  setDescription(String description) => this.description = description;
  String getDescription() => description;
}
