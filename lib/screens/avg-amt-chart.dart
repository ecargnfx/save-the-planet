import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_hackathon/dataset-one.dart';

class AvgAmtChart extends StatelessWidget {
  final List<DatasetOne> data;

  AvgAmtChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DatasetOne, String>> series = [
      charts.Series(
          id: "Damage",
          data: data,
          domainFn: (DatasetOne series, _) => series.year,
          measureFn: (DatasetOne series, _) => series.avgAmt,
          colorFn: (DatasetOne series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20.0),
      child: Card(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Damage by Year",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Expanded(
                    child: charts.BarChart(series, animate: true),
                  ),
                ],
              ))),
    );
  }
}
