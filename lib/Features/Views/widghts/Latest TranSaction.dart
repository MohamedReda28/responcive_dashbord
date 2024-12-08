import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';
import 'LasterTran Listview.dart';
class LatestTranSaction extends StatelessWidget {
  const LatestTranSaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',style: AppStyles.styleMeddium16(context),),
        SizedBox(height: 12,),
        LasterTran_Listview(),

      ],
    );
  }
}


