import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashpord/cors/utils/app_styles.dart';

import 'Range option.dart';
class All_Expenses_Heafer extends StatelessWidget {
  const All_Expenses_Heafer({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(text,style: AppStyles.styleSemiBold20(context),),
        Expanded(child: SizedBox()),
        Renge_option()
      ],
    );
  }
}

