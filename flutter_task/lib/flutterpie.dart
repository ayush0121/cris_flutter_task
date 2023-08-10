import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class FlutterPieChart extends PieChart {
  final int flutterWeighage;

  FlutterPieChart({this.flutterWeighage = 5, required super.dataMap});

  @override
  Widget build(BuildContext context) {
    if (flutterWeighage > 0) {
      return PieChart(
        dataMap: {
          "Flutter": flutterWeighage / 5,
        },
        chartRadius: MediaQuery.of(context).size.width / 2.5,
        legendOptions: LegendOptions(
          legendPosition: LegendPosition.bottom,
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValues: true,
        ),
      );
    } else {
      return Center(
        child: Text("No Flutter data"),
      );
    }
  }
}
