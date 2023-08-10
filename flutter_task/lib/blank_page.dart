import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'flutterpie.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Flutter1": 1,
      "Flutter2": 1,
      "Flutter3": 1,
      "Flutter4": 1,
      "Flutter5": 1,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Blank Page"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (dataMap.containsKey("Flutter") &&
                !dataMap.containsKey("React") &&
                !dataMap.containsKey("Xamarin") &&
                !dataMap.containsKey("Ionic")) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FlutterPieChart(
                          flutterWeighage: 5,
                          dataMap: {},
                        )),
              );
            } else {
              Text("No Flutter data");
            }
          },
          child: PieChart(
            dataMap: dataMap,
            chartRadius: MediaQuery.of(context).size.width / 2.5,
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
