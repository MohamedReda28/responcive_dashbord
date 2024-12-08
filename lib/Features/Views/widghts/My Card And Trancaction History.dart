import 'package:flutter/material.dart';
import '../dash_boardDisktop_layout.dart';
import 'My Card Section.dart';
import 'TransactionHistorySection.dart';


class MyCardTransactionHistory extends StatelessWidget {
  const MyCardTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          MyCardSection(),
          TransactionHistorySection(),
         ],
      ),
    );
  }
}
