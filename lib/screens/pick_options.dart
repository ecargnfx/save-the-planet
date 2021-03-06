import 'package:flutter/material.dart';
import 'package:flutter_hackathon/constants.dart';
import 'package:flutter_hackathon/screens/set_goal.dart';

class PickOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//            AvgAmtChart(
//              data: data,
//            ),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SetGoal();
                    },
                  ),
                );
              },
              child: Text(kCarbonTopic)),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SetGoal();
                    },
                  ),
                );
              },
              child: Text(kRaceTopic)),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SetGoal();
                    },
                  ),
                );
              },
              child: Text(kPlasticTopic)),
        ],
      ),
    );
  }
}
