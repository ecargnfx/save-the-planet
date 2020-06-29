import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DatasetOne {
  final String year;
  final double avgAmt;
  final charts.Color barColor;

  DatasetOne({
    @required this.year,
    @required this.avgAmt,
    @required this.barColor,
  });
}

class MyBarChart extends StatelessWidget {
  final List<DatasetOne> data;

  MyBarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DatasetOne, String>> series = [
      charts.Series(
          id: 'AppDownloads',
          data: data,
          domainFn: (DatasetOne downloads, _) => downloads.year,
          measureFn: (DatasetOne downloads, _) => downloads.avgAmt,
          colorFn: (DatasetOne downloads, _) => downloads.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.groupedStacked,
    );
  }
}
