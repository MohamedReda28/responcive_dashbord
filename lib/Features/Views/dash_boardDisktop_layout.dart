import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashpord/Features/Views/widghts/All%20Expenses%20header.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Custom_drower.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Income%20Section.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Middel%20Sction%20Desktop.dart';
import 'package:responsive_dashpord/Features/Views/widghts/My%20Card%20And%20Trancaction%20History.dart';

import 'widghts/Income Chart.dart';
import 'widghts/Left Section.dart';


class desktop_Layout extends StatelessWidget {
  const desktop_Layout({super.key});

  @override
  Widget build(BuildContext context) {

    return  const Row(
      children: [
        Expanded(
          flex:2,
            child: Custom_Drower(),
        ),
        SizedBox(width:20,),
         Expanded(
          flex: 5,
          child: Middel_Sction_Desktop(),
        ),
        SizedBox(width:20,),
        Expanded(
          flex: 3,
          child: Left_Section(),
        ),
          ],
        );
  }
}











