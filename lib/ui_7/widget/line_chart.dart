import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';

class LineReportChartUi7 extends StatelessWidget {
  const LineReportChartUi7({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              // isStrokeCapRound: true,
              // isStepLineChart: true,
              // preventCurveOverShooting: true,
              spots: getSports(),
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              color: kPrimaryColorUi7,
              barWidth: 4,
            )
          ],
        ),
      ),
    );
  }
}

List<FlSpot> getSports() {
  return [
    FlSpot(0, .5),
    FlSpot(1, 1.5),
    FlSpot(2, .5),
    FlSpot(3, .7),
    FlSpot(4, .2),
    FlSpot(5, 2),
    FlSpot(6, 1.5),
    FlSpot(7, 1.7),
    FlSpot(8, 1),
    FlSpot(9, 2.8),
    FlSpot(10, 2.5),
    FlSpot(11, 2.65),
  ];
}
