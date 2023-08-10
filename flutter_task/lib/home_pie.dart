import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'blank_page.dart';

class HomePie extends StatefulWidget {
  @override
  _HomePieState createState() => _HomePieState();
}

class _HomePieState extends State<HomePie> {
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  bool showFlutterProperties = false;

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
            dataMap: dataMap,
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
