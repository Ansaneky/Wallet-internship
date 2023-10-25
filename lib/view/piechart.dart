import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Mypiechart extends StatefulWidget {
  const Mypiechart({super.key});

  @override
  State<Mypiechart> createState() => _MypiechartState();
}

class _MypiechartState extends State<Mypiechart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      
      PieChartData(
        sections: [
          PieChartSectionData(
            
            color: Color.fromARGB(255, 227, 39, 189)
          ),
           PieChartSectionData(
           
            color: Colors.purple
          ),
           PieChartSectionData(
            
            color: Color.fromARGB(255, 48, 240, 211)
          ),
           PieChartSectionData(
            
            color: Color.fromARGB(255, 225, 214, 58)
          )
        ]
      )
    );
  }
}