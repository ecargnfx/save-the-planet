import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class SetGoal extends StatefulWidget {
  final String topic;

  SetGoal(this.topic);

  @override
  _SetGoalState createState() => _SetGoalState();
}

class _SetGoalState extends State<SetGoal> {
  int _actionsWeekly = 5;
  int selectedActions = 0;

  void saveButtonPressed () {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Your Goal'),
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: double.infinity), //widens column
            Text('I will commit to ' ),
            Expanded(
              child: TextFormField(
                initialValue: widget.topic,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormField(
                  initialValue: _actionsWeekly,
                  autovalidate: true,
                  // onSaved: (value) {
                  //   _actionsWeekly = value;
                  // },
                  builder: (value) {
                    return NumberPicker.integer(
                    initialValue: _actionsWeekly,
                     minValue: 1, 
                     maxValue: 70, 
                     onChanged: (value) {
                       setState(() {
                        _actionsWeekly = value;
                       });
                      }
                    );
                  },
                ),
                Text('times per week'),
              ],
            ),
            Expanded(
              child: FlatButton(
                onPressed: saveButtonPressed,
                child: Text('SAVE'),
              ),
            ),
            Text('I will do this by...'),
            // Expanded(
            //   child: ListView.builder(
            //     itemBuilder: null
            //   )
            // ),
          ],
        ),
      ),
    );
  }
}


