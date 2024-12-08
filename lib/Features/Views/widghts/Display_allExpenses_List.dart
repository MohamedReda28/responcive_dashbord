import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/All%20Expenses%20Item.dart';

import '../../../cors/Models/All Expenses Item Model.dart';
import '../../../cors/utils/app_image.dart';

class Display_allExpenses_List extends StatefulWidget {
  const Display_allExpenses_List({
    super.key,
  });

  @override
  State<Display_allExpenses_List> createState() => _Display_allExpenses_ListState();
}

class _Display_allExpenses_ListState extends State<Display_allExpenses_List> {
 final List<AllExpensesModel> items=[
    const AllExpensesModel(
        Image: Assets.imagesBalanc,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'
    ),
    const AllExpensesModel(
        Image: Assets.imagesWallet,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'
    ),
    const AllExpensesModel(
        Image: Assets.imagesWallet,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'
    ),
  ];
 int selectindex=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              if(selectindex!=0){
                setState(() {
                  selectindex=0;
                });
              }
            },
            child: All_Expenses_Item(itemModel: items[0], isSelected:selectindex==0 ,),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: (){
              if(selectindex!=1){
                setState(() {
                  selectindex=1;
                });
              }
            },
            child: All_Expenses_Item(itemModel: items[1], isSelected:selectindex==1 ,),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: (){
              if(selectindex!=2){
                setState(() {
                  selectindex=2;
                });
              }
            },
            child: All_Expenses_Item(itemModel: items[2], isSelected:selectindex==2 ,),
          ),
        ),
      ],
    );
    return Row(
     //children: items.map((e) =>Expanded(child: All_Expenses_Item(itemModel: e))).toList(),
      children: items.asMap().entries.map((e){
        int index=e.key;
        var item=e.value;
        return Expanded(
            child: GestureDetector(
              onTap: (){
                if(selectindex!=index){
                  setState(() {
                    selectindex=index;
                  });
                }
              },
              child: Padding(
                padding: index==1? const EdgeInsets.symmetric(horizontal: 12)
                    :const EdgeInsets.symmetric(horizontal: 0),
                child: All_Expenses_Item(itemModel: item, isSelected:selectindex==index ,),
              ),
            ),
        );
      }).toList()
    );
  }
}