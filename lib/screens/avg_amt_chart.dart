import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_hackathon/screens/dataset_one.dart';

class Chart extends StatefulWidget {
  Chart({Key key}) : super(key: key);
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Graph Demo',
      debugShowCheckedModeBanner: false,
      home: BarGraphDemo(),
//      theme: ThemeData.dark(),
    );
  }
}

class BarGraphDemo extends StatefulWidget {
  BarGraphDemo({Key key}) : super(key: key);

  @override
  _BarGraphDemoState createState() => _BarGraphDemoState();
}

class _BarGraphDemoState extends State<BarGraphDemo> {
  List<DatasetOne> data;

  @override
  void initState() {
    super.initState();

    data = [
      DatasetOne(
        year: '2017',
        avgAmt: 538.1,
        barColor: charts.ColorUtil.fromDartColor(Colors.red),
      ),
      DatasetOne(
        year: '2018',
        avgAmt: 578.4,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
      ),
      DatasetOne(
        year: '2019',
        avgAmt: 678.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Card(
              child: MyBarChart(data),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Police violence year over year',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
