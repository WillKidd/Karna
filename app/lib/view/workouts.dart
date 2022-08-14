import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../model/workout.dart';

class WorkoutView extends StatelessWidget {
  IsarCollection<Workout> workouts;
  WorkoutView({Key? key, required this.workouts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyScrollView(workouts: workouts);
  }
}

class Placeholder extends StatelessWidget {
  const Placeholder({
    Key? key,
    required this.workouts,
  }) : super(key: key);

  final IsarCollection<Workout> workouts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: MyScrollView(workouts: workouts),
        ),
        Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Expanded(
                child: CupertinoButton(
                  child: Text('New workout'),
                  onPressed: () {
                    return;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyScrollView extends StatelessWidget {
  const MyScrollView({
    Key? key,
    required this.workouts,
  }) : super(key: key);

  final IsarCollection<Workout> workouts;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      CupertinoSliverNavigationBar(
        largeTitle: const Text('Workouts'),
        trailing: CupertinoButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            return;
          },
          child: Icon(Icons.add_circle, size: 30),
        ),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
        return Card(
          margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Text('Workout ${workouts.getSync(index)!.name}'),
          ),
        );
      }, childCount: workouts.countSync())),
    ]);
  }
}
