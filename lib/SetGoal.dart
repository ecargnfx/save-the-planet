import 'package:flutter/material.dart';

class SetGoal extends StatefulWidget {
  @override
  _SetGoalState createState() => _SetGoalState();
}

class _SetGoalState extends State<SetGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Your Goal'),
      ),
      body: Center(),
    );
  }
}
