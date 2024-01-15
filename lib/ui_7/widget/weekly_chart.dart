import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            // show: false,
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true, getTitlesWidget: bottomTitleWidgets),
            ),
          ),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (key, value) => barChartGroups.add(
          BarChartGroupData(
            x: key,
            barRods: [
              BarChartRodData(
                toY: value,
                color: key == 4 ? kPrimaryColorUi7 : kInactiveChartColorUi7,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

SideTitleWidget bottomTitleWidgets(double value, TitleMeta meta) {
  String week = switch (value.toInt()) {
    0 => 'Mon',
    1 => 'Tue',
    2 => 'Wed',
    3 => 'Thu',
    4 => 'Fri',
    5 => 'Sat',
    6 => 'Sun',
    _ => '',
  };
  return SideTitleWidget(
    child: Text(
      week,
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w200,
        color: Color(0xFF7589A2),
      ),
    ),
    axisSide: meta.axisSide,
  );
}
