import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom Elevation Botton.dart';
import 'Custom TextField With Text.dart';
import 'Custom botton.dart';

class Quick_Invoice_Form extends StatelessWidget {
  const Quick_Invoice_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextFieldWithText(title: 'Customer name',hintText: 'Type customer name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFieldWithText(title: 'Customer Email',hintText: 'Type customer email',),),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTextFieldWithText(title: 'Item name',hintText: 'TType customer name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFieldWithText(title: 'Item mount',hintText: 'USD',),),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomElvetionBotton(
                background: Colors.transparent,
                text: 'Add more details',
                textcolor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(width: 24,),
            Expanded(
              child: CustomElvetionBotton(
                background: Color(0xFF4EB7F2),
                text: 'Send Money',
                textcolor: Color(0xFFFFFFFF),
              ),
            ),

          ],
        )
      ],
    );
  }
}
