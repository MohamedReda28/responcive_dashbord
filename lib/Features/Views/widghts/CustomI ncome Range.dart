import 'package:flutter/material.dart';

import '../../../cors/Models/Income Model.dart';
import '../../../cors/utils/app_styles.dart';

class CustomIncomeRange extends StatelessWidget {
  const CustomIncomeRange({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Container(
        height: 10,
        width: 10,
        decoration: ShapeDecoration(
          color: incomeModel.color,
          shape: OvalBorder()
        ),
      ),
      title: Text(incomeModel.title,style: AppStyles.styleRegular16(context) ,),
      trailing: Text(incomeModel.range,style: AppStyles.styleMeddium16(context).copyWith(color: Color(0xFF208CC8))),
    );
  }
}