import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeeklyProgress extends StatefulWidget {
  @override
  _WeeklyProgressState createState() => _WeeklyProgressState();
}

class _WeeklyProgressState extends State<WeeklyProgress> {
  List<Widget> weeks = [
    Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          children: <Widget>[
            Text('Week 1', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          children: <Widget>[
            Text('Week 2', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          children: <Widget>[
            Text('Week 3', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          children: <Widget>[
            Text('Week 4', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                  Icon(Icons.not_interested, color: Colors.grey[500]),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          children: <Widget>[
            Text('Week 5', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                  Icon(Icons.check_circle, color: Colors.green),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My Progress"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: weeks),
        ),
      ),
    );
  }
}
