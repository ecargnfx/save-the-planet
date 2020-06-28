import 'package:flutter/material.dart';
import 'package:flutter_hackathon/constants.dart';
import 'package:flutter_hackathon/screens/set_goal.dart';

class PickOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                        return SetGoal(kCarbonTopic);
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
                        return SetGoal(kRaceTopic);
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
                        return SetGoal(kPlasticTopic);
                      },
                    ),
                  );
                },
                child: Text(kPlasticTopic)),
          ],
        ),
      ),
    );
  }
}
