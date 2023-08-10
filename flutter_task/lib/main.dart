import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'blank_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pie Chart',
      home: HomePie(),
    );
  }
}

class HomePie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Pie Chart"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BlankPage()),
          );
        },
        child: Center(
          child: PieChart(
            dataMap: {
              "Flutter": 5,
              "React": 3,
              "Xamarin": 2,
              "Ionic": 2,
            },
            chartRadius: MediaQuery.of(context).size.width / 1.7,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValues: true,
            ),
          ),
        ),
      ),
    );
  }
}
