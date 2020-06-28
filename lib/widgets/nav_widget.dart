import 'package:flutter/material.dart';
import 'package:flutter_hackathon/screens/pick_options.dart';
import 'package:flutter_hackathon/screens/set_goal.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PickOptions(),
    PlaceholderWidget(Colors.blue),
    PlaceholderWidget(Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_chart),
            title: new Text('Explore Data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            title: Text('My Goals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My Progress'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Hello')));
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
