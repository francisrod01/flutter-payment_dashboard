import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:payment_dashboard/constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  '29.1L',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                      color: Colors.white),
                ),
                const Text(
                  'of 1M\$',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    color: Colors.yellowAccent,
    value: 25,
    showTitle: false,
    radius: 30,
  ),
  PieChartSectionData(
    color: const Color(0xff26e5ff),
    value: 20,
    showTitle: false,
    radius: 20,
  ),
  PieChartSectionData(
    color: const Color(0xffffcf26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: const Color(0xffee2727),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
