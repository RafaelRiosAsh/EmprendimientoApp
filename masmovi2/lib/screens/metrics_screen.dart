import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import 'package:fl_chart/fl_chart.dart';

final CustomColors customColors = CustomColors();

class MetricsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              customColors.mediumBlue,
              customColors.lightBlue,
              customColors.darkLightBlue,
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: customColors.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gráfico de pasos diarios',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: customColors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: customColors.darkGrey,
                        ),
                        child: Center(
                          child: Container(
                            height: 200,
                            child: BarChart(
                              BarChartData(
                                alignment: BarChartAlignment.spaceAround,
                                maxY: 20,
                                barTouchData: BarTouchData(enabled: false),
                                titlesData: FlTitlesData(
                                  show: true,
                                  bottomTitles: SideTitles(
                                    showTitles: true,
                                    margin: 10,
                                    getTitles: (double value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return 'Lun';
                                        case 1:
                                          return 'Mar';
                                        case 2:
                                          return 'Mié';
                                        case 3:
                                          return 'Jue';
                                        case 4:
                                          return 'Vie';
                                        case 5:
                                          return 'Sáb';
                                        case 6:
                                          return 'Dom';
                                        default:
                                          return '';
                                      }
                                    },
                                  ),
                                  leftTitles: SideTitles(showTitles: false),
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                barGroups: [
                                  BarChartGroupData(
                                    x: 0,
                                    barRods: [
                                      BarChartRodData(
                                        y: 8,
                                        colors: [customColors.lightBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 1,
                                    barRods: [
                                      BarChartRodData(
                                        y: 10,
                                        colors: [customColors.mediumBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 2,
                                    barRods: [
                                      BarChartRodData(
                                        y: 14,
                                        colors: [customColors.darkMediumBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 3,
                                    barRods: [
                                      BarChartRodData(
                                        y: 12,
                                        colors: [customColors.darkLightBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 4,
                                    barRods: [
                                      BarChartRodData(
                                        y: 9,
                                        colors: [customColors.darkMediumBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 5,
                                    barRods: [
                                      BarChartRodData(
                                        y: 11,
                                        colors: [customColors.lightBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                  BarChartGroupData(
                                    x: 6,
                                    barRods: [
                                      BarChartRodData(
                                        y: 6,
                                        colors: [customColors.darkLightBlue],
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: customColors.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gráfico de calorías quemadas',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: customColors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: customColors.darkGrey,
                        ),
                        child: Center(
                          child: CalorieChart(
                            burnedCalories: [80, 120, 200, 160, 180, 110, 90],
                            daysOfWeek: [
                              'Lun',
                              'Mar',
                              'Mié',
                              'Jue',
                              'Vie',
                              'Sáb',
                              'Dom'
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: customColors.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Datos de actividad física',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: customColors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pasos',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                          Text(
                            '10,000',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Calorías quemadas',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                          Text(
                            '500',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Distancia recorrida',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                          Text(
                            '5 km',
                            style: TextStyle(
                              fontSize: 20,
                              color: customColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: customColors.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Récords personales',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: customColors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pasos máximos en un día',
                            style: TextStyle(
                              fontSize: 10,
                              color: customColors.white,
                            ),
                          ),
                          Text(
                            '15,000',
                            style: TextStyle(
                              fontSize: 10,
                              color: customColors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Calorías máximas quemadas en un día',
                            style: TextStyle(
                                fontSize: 10,
                                color: customColors.white,
                                overflow: TextOverflow.clip),
                          ),
                          Text(
                            '800',
                            style: TextStyle(
                                fontSize: 10,
                                color: customColors.white,
                                overflow: TextOverflow.clip),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Distancia máxima recorrida en un día',
                            style: TextStyle(
                              fontSize: 10,
                              color: customColors.white,
                            ),
                          ),
                          Text(
                            '10 km',
                            style: TextStyle(
                              fontSize: 10,
                              color: customColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalorieChart extends StatelessWidget {
  final List<double> burnedCalories;
  final List<String> daysOfWeek;

  const CalorieChart({required this.burnedCalories, required this.daysOfWeek});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 500,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 10,
              getTitles: (double value) {
                return daysOfWeek[value.toInt()];
              },
            ),
            leftTitles: SideTitles(showTitles: false, margin: 10),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: List.generate(
            burnedCalories.length,
            (index) => BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  y: burnedCalories[index],
                  colors: [Colors.blueAccent],
                ),
              ],
              showingTooltipIndicators: [0],
            ),
          ),
        ),
      ),
    );
  }
}
