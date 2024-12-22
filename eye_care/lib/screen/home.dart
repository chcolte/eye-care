import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


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
              scoreWidget(80, 10),
            ],
          ),
        )
    );
  }


  // scoreは0~100の値で, diff_cmは今の画面との距離をcmで表示
  Widget scoreWidget(int score, int diffCm) {
    const int kMaxScore = 100;

    return SfRadialGauge(
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(
          showLabels: false,
          showTicks: false,
          radiusFactor: 0.8,
          maximum: kMaxScore.toDouble(),
          axisLineStyle: const AxisLineStyle(
            cornerStyle: CornerStyle.startCurve,
            thickness: 5,
          ),
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              angle: 90,
              widget: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Score',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),

                  Text(
                    score.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 48,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text(
                      '$diffCm cm',
                    ),
                  ),


                ],
              ),
            ),
            const GaugeAnnotation(
              angle: 124,
              positionFactor: 1.1,
              widget: Text(
                '0',
                style: TextStyle(fontSize:14),
              ),
            ),
            GaugeAnnotation(
              angle: 54,
              positionFactor: 1.1,
              widget: Text(
                kMaxScore.toString(),
                style: TextStyle(fontSize:14),
              ),
            ),
          ],
          pointers: <GaugePointer>[
            RangePointer(
              value: score.toDouble(),
              width: 24,
              pointerOffset: -9,
              cornerStyle: CornerStyle.bothCurve,
              color: Colors.blue,
              gradient: const SweepGradient(
                colors: <Color>[Colors.blue, Colors.lightBlueAccent],
                stops: <double>[0.25, 0.75],
              ),
            ),
            MarkerPointer(
              value: score.toDouble()-2,
              color: Colors.white,
              markerType: MarkerType.circle,
            ),
          ],
        ),
      ],
    );
  }

}