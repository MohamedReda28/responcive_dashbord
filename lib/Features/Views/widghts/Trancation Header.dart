import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';
class TrancationHeader extends StatelessWidget {
  const TrancationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History',style: AppStyles.styleSemiBold20(context),),

        Text('See all',style: AppStyles.styleMeddium16(context).copyWith(color:Color(0xFF4EB7F2),),),

      ],
    );
  }
}