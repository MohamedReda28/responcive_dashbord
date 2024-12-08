import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Custom%20Dot%20Indecator.dart';

class Dots_Indcator extends StatelessWidget {
  const Dots_Indcator({super.key, required this.curntpageindex});
final int curntpageindex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) =>  Padding(
          padding: EdgeInsets.only(right: 6),
        child: Custom_Dot_Indecator(isActive: index ==curntpageindex),
       ),
      ),
    );
  }
}
