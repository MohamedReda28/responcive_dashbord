import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Transction%20Custom.dart';
import 'package:responsive_dashpord/cors/Models/Tranction%20Model.dart';

class TransactinListView extends StatelessWidget {
  const TransactinListView({super.key});
  
  static const items =[
    TranctionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', amount: r'$20,129', isWithdrwer: true),
    TranctionModel(title: 'Landing Page project', date: '13 Apr, 2022 ', amount: r'$20,129', isWithdrwer: false),
    TranctionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 ', amount: r'$20,129', isWithdrwer: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
        return TArnsction_Custom(tranctionModel: items[index]);
        }
    );
  }
}
