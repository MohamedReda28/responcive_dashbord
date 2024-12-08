import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/CustomI%20ncome%20Range.dart';
import 'package:responsive_dashpord/cors/Models/Income%20Model.dart';

import 'All Expenses header.dart';
import 'Income Chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),child:   const Column(
      children: [
        All_Expenses_Heafer(text: 'Income'),
        SizedBox(height: 16,),
        Expanded(
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Expanded(child: Income_Chart()),
             Expanded(
               flex: 2,
                 child: ListViewIncomeRang()),

           ],
         ),
       )

       ],
     ),
    );
  }
}


class ListViewIncomeRang extends StatelessWidget {
  const ListViewIncomeRang({super.key});
  static const List<IncomeModel> items= [
    IncomeModel(color: Color(0xFF208CC8), title: 'Design service', range: '40%'),
    IncomeModel(color: Color(0xFF4EB7F2), title: 'Design product', range: '25%'),
    IncomeModel(color: Color(0xFF064061), title: 'Product royalti', range: '20%'),
    IncomeModel(color: Color(0xFFE2DECD), title: 'Other', range: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
        itemBuilder: (context,index){
        return CustomIncomeRange(incomeModel: items[index]);
        }
    );
  }
}
