import 'package:flutter/cupertino.dart';
import 'system.dart';

class Exercise {
  String name = "Enter name";
  Image image = Image.asset('assets/images/placeholder.png');
  //all units are saved in metric system
  double weight = 0.0; //kg
  bool isMeasuredInRepetitions = true;
  double duration = 0.0;
  int repetitions = 0;
  int sets = 0;
  List<Exercise> variations = [];

  Exercise(
      {required this.name,
      required this.weight,
      required this.isMeasuredInRepetitions,
      required double duration,
      required int repetitions,
      required this.sets}) {
    if (isMeasuredInRepetitions) {
      this.repetitions = repetitions;
      this.duration = 0.0;
    } else {
      this.duration = duration;
      this.repetitions = 0;
    }
  }

  setName(String name) => this.name = name;
  String getName() => name;

  setWeight(double weight) {
    switch (System().getSystemOfUnits()) {
      case SystemOfUnits.metric:
        this.weight = weight;
        break;
      default:
        this.weight = weight / 2.20462;
        break;
    }
  }

  double getWeight() {
    switch (System().getSystemOfUnits()) {
      case SystemOfUnits.metric:
        return weight;
      default:
        return weight * 2.20462;
    }
  }

  setIsMeasuredInRepetitions(bool isMeasuredInRepetitions) =>
      this.isMeasuredInRepetitions = isMeasuredInRepetitions;
  bool getIsMeasuredInRepetitions() => isMeasuredInRepetitions;
  switchIsMeasuredInRepetitions() =>
      isMeasuredInRepetitions = !isMeasuredInRepetitions;

  setDuration(double duration) => this.duration = duration;
  double getDuration() => duration;

  setRepetitions(int repetitions) => this.repetitions = repetitions;
  int getRepetitions() => repetitions;

  setSets(int sets) => this.sets = sets;
  int getSets() => sets;

  addVariation(Exercise exercise) => variations.add(exercise);
  removeVariation(Exercise exercise) => variations.remove(exercise);
  getVariations() => variations;

  setImage(Image image) => this.image = image;
  getImage() => image;
}
