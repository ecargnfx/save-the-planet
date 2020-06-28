import 'package:flutter/material.dart';
import 'package:flutter_hackathon/dataset_one.dart';
import 'package:flutter_hackathon/Screens/avg_amt_chart.dart';
import 'package:flutter_hackathon/Screens/set_goal.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_hackathon/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: kAppTheme, //look in the constants file
        home: PickOptions());
    // can run BarChartSample3() to see chart, routing not working yet due to some type conflict
  }
}

class PickOptions extends StatelessWidget {
  final List<DatasetOne> data = [
    DatasetOne(
      year: "2008",
      avgAmt: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2009",
      avgAmt: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2010",
      avgAmt: 12000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2011",
      avgAmt: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2012",
      avgAmt: 8500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2013",
      avgAmt: 7700000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2014",
      avgAmt: 7600000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DatasetOne(
      year: "2015",
      avgAmt: 5500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Options'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AvgAmtChart(
                data: data,
              ),
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
      ),
    );
  }
}
