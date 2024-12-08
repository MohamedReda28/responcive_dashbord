import 'package:flutter/material.dart';

import 'Income Section.dart';
import 'My Card And Trancaction History.dart';
class Left_Section extends StatelessWidget {
  const Left_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyCardTransactionHistory(),
          SizedBox(height: 24,),
          SizedBox(
              height: 270,
              child: Expanded(child: IncomeSection())),


        ],
      ),
    );
  }
}
