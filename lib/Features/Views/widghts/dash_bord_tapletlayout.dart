import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Custom_drower.dart';
import 'dashbord Mobile Layout.dart';


class DashBordTapletLayout extends StatelessWidget {
  const DashBordTapletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
    children: [
       Expanded(
        flex: 2,
           child: Custom_Drower()),
      SizedBox(width: 25,),
      Expanded(
        flex: 5,
          child: dashbordMobileLayout(),
      ),
     ],
    );
  }
}

