// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';

class Frame extends StatefulWidget {
  const Frame({Key? key}) : super(key: key);

  @override
  _FrameState createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.triangle),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square),
            label: 'Overview',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        late final CupertinoTabView ret;
        switch (index) {
          case 0:
            ret = CupertinoTabView(
              builder: (context) {
                return const CustomScrollView(slivers: <Widget>[
                  CupertinoSliverNavigationBar(
                    largeTitle: Text('Workouts'),
                  ),
                ]);
              },
            );
            break;
          case 1:
            ret = CupertinoTabView(
              builder: (context) {
                return const CustomScrollView(slivers: <Widget>[
                  CupertinoSliverNavigationBar(
                    largeTitle: Text('Exercises'),
                  ),
                ]);
              },
            );
            break;
          case 2:
            ret = CupertinoTabView(
              builder: (context) {
                return const CustomScrollView(slivers: <Widget>[
                  CupertinoSliverNavigationBar(
                    largeTitle: Text('Overview'),
                  ),
                ]);
              },
            );
            break;
        }
        return ret;
      },
    );
  }
}
