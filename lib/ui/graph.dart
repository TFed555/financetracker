import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CategoryData {
  final String category;
  final double amount;
  // final String type;

  CategoryData(this.category, this.amount);
}


class PieChartWidget extends StatelessWidget {
  final List<CategoryData> data;

  PieChartWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Income and Expenses'),
      legend: Legend(isVisible: true),
      series: <CircularSeries>[
        PieSeries<CategoryData, String>(
          dataSource: data,
          xValueMapper: (CategoryData data, _) => data.category,
          yValueMapper: (CategoryData data, _) => data.amount,
          dataLabelMapper: (CategoryData data, _) => '${data.category}: ${data.amount}',
          dataLabelSettings: DataLabelSettings(isVisible: true),
        ),
      ],
    );
  }
}

