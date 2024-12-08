import 'package:flutter/material.dart';

import 'All Expenses.dart';
import 'Income Section.dart';
import 'My Card And Trancaction History.dart';
import 'Section Quick Invoice.dart';

class Middel_Sction_Desktop extends StatelessWidget {
  const Middel_Sction_Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          //SizedBox(height: 20),
          All_Expenses(),
          SizedBox(height: 24,),
          Section_Quick_Invoice(),

        ],
      ),
    );
  }
}

