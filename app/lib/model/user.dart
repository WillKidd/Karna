import 'package:app/model/system.dart';

class User {
  String name;
  int age = 0;
  //all units are saved in metric system
  double weight = 0.0; //kg
  double height = 0.0; //cm

  User.onlyName(this.name);

  setName(String name) => this.name = name;
  String getName() => name;

  setAge(int age) => this.age = age;
  int getAge() => age;

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

  setHeight(double height) {
    switch (System().getSystemOfUnits()) {
      case SystemOfUnits.metric:
        this.height = height;
        break;
      default:
        this.height = height * 30.48;
        break;
    }
  }

  double getHeight() {
    switch (System().getSystemOfUnits()) {
      case SystemOfUnits.metric:
        return height;
      default:
        return height / 30.48;
    }
  }
}
