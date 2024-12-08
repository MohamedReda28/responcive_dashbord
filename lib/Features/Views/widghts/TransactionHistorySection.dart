import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';
import 'Trancation Header.dart';
import 'Transactin ListView.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrancationHeader(),
        SizedBox(height: 20,),
        Text('13 April 2022',style: AppStyles.styleMeddium16(context).copyWith(color: Color(0xFFAAAAAA))),
        TransactinListView(),

      ],
    );
  }
}