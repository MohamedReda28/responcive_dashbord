import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';
import 'Custom Text Field.dart';

class CustomTextFieldWithText extends StatelessWidget {
  const CustomTextFieldWithText({super.key, required this.title, required this.hintText});
  final String title,hintText;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppStyles.styleMeddium16(context),),
        SizedBox(height: 12,),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}

