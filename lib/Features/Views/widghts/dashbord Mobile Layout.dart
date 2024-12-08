import 'package:flutter/material.dart';

import 'Income Section.dart';
import 'Middel Sction Desktop.dart';
import 'My Card And Trancaction History.dart';

class dashbordMobileLayout extends StatelessWidget {
  const dashbordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Middel_Sction_Desktop(),
          SizedBox(height: 24,),
          MyCardTransactionHistory(),
          SizedBox(height: 24,),
          SizedBox(
            height: 300,
            child: Expanded(child: IncomeSection(),
            ),
          ),
          SizedBox(height: 80,),
        ],
      ),
    );
  }
}
