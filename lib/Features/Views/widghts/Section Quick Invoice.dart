import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashpord/cors/utils/app_styles.dart';
import 'Custom Text Field.dart';
import 'Custom TextField With Text.dart';
import 'Latest TranSaction.dart';
import 'Quick Invoice Form.dart';
import 'Quick Invoice Header.dart';

class Section_Quick_Invoice extends StatelessWidget {
  const Section_Quick_Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1,color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
      ),
      child:  const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Quick_Invoice_Header(),
            SizedBox(height: 14,),
            LatestTranSaction(),
            Divider(height: 48,color: Color(0xFFF1F1F1),),
            Quick_Invoice_Form(),


          ],
        ),
      ),
    );
  }
}


