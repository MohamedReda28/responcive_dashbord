import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Income_Chart extends StatefulWidget {
  const Income_Chart({super.key});

  @override
  State<Income_Chart> createState() => _Income_ChartState();
}

class _Income_ChartState extends State<Income_Chart> {
  int sectionIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
        child: PieChart(getChartdata()));
  }

  PieChartData getChartdata()
  {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0,PieTouchResponse){
          sectionIndex= PieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {

          });
        }
      ),
      sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius:sectionIndex ==0 ?50:40,
              showTitle: false,value: 40,color: Color(0xFF208CC8)),
          PieChartSectionData(
              radius:sectionIndex ==1 ?50:40,
                showTitle: false,value: 25,color: Color(0xFF4EB7F2)),
          PieChartSectionData(
              radius:sectionIndex ==2 ?50:40,
              showTitle: false,value: 20,color: Color(0xFF064061)),
          PieChartSectionData(
              radius:sectionIndex ==3 ?50:40,
              showTitle: false,value: 22,color: Color(0xFFE2DECD)),
        ]
    );
  }
}