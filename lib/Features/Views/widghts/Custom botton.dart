import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';

class CustomTextBottons extends StatelessWidget {
  const CustomTextBottons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: (){},
            child: Text('Add more details',style: AppStyles.styleSemiBold18(context),)
        ),

      ],
    );
  }
}

