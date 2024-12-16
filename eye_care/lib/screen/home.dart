import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                lineChart(),
              ],
            ),
          )
    );
  }

  Widget lineChart(){

    return FractionallySizedBox(
      widthFactor: 0.49,

      child: AspectRatio(
        aspectRatio: 1.618,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              color: Color(0xff232d37),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      horizontalInterval: 3.0,
                      verticalInterval: 1.0
                  ),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1),
                        FlSpot(1, 2),
                        FlSpot(2, 1),
                        FlSpot(3, 4),
                        FlSpot(4, 5.25),
                        FlSpot(5, 6),
                        FlSpot(6, 10),
                        FlSpot(7, 8),
                      ],
                      isCurved: false,
                      barWidth: 0.6,
                      dotData: FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) =>
                              FlDotCirclePainter(
                                radius: 3,
                                color: Colors.blue,
                                strokeWidth: 0,
                              )
                      ),

                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );


  }

}