import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DatasetOne {
  final String year;
  final int avgAmt;
  final charts.Color barColor;

  DatasetOne(
      {@required this.year, @required this.avgAmt, @required this.barColor});
}
