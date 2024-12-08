import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../cors/Models/All Expenses Item Model.dart';
import '../../../cors/utils/app_styles.dart';
import 'All_Expenses_Item_Header.dart';

class InActiveListItem extends StatelessWidget {
  const InActiveListItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1,color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          )
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            All_Expenses_Item_Header(image:itemModel.Image,),
            const SizedBox(height: 34,),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(itemModel.title,style: AppStyles.styleSemiBold16(context),)),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(itemModel.date,style: AppStyles.styleRegular14(context),)),
            const SizedBox(height: 16,),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(itemModel.price,style: AppStyles.styleSemiBold24(context),)),




          ],
        ),
      ),
    );
  }
}
class ActiveListItem extends StatelessWidget {
  const ActiveListItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1,color: Color(0xFF4EB7F2)),
            borderRadius: BorderRadius.circular(12),
          )
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            All_Expenses_Item_Header(image:itemModel.Image,
                imagebackground: Colors.white.withOpacity(0.10000000149011612),
              imagecolor: Colors.white,
            ),
            const SizedBox(height: 34,),
            FittedBox(
              fit: BoxFit.scaleDown,
                child: Text(itemModel.title,style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),)),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(itemModel.date,style: AppStyles.styleRegular14(context).copyWith(color: Color(0xFFFAFAFA)),)),
            const SizedBox(height: 16,),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(itemModel.price,style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),)),




          ],
        ),
      ),
    );
  }
}
