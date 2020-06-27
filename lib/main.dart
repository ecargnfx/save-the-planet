import 'package:flutter/material.dart';
import 'package:flutter_hackathon/BarChartSample3.dart';
import 'package:flutter_hackathon/Screens/SetGoal.dart';
import 'package:flutter_hackathon/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: kAppTheme, //look in the constants file
        home: PickOptions());
    // can run BarChartSample3() to see chart, routing not working yet due to some type conflict
  }
}

class PickOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Options'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
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

//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) {
//                    return Chart();
//                  },
//                ),
//              );
