import 'package:flutter/material.dart';
import 'package:flutter_hackathon/BarChartSample3.dart';
import 'package:flutter_hackathon/SetGoal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
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
                        return SetGoal();
                      },
                    ),
                  );
                },
                child: Text('Reducing Carbon Emissions')),
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
                child: Text('Reducing Racial Injustice')),
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
                child: Text('Reducing Plastic Pollution')),
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
