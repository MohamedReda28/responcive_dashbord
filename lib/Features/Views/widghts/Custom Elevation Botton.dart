import 'package:flutter/material.dart';
import 'package:responsive_dashpord/cors/utils/app_styles.dart';

class CustomElvetionBotton extends StatelessWidget {
  const CustomElvetionBotton({super.key, required this.text, required this.background, required this.textcolor});
final String text;
 final  Color background,textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: background,
          ),
          child: Text(text, style: AppStyles.styleSemiBold18(context).copyWith(
              color: textcolor),
            ),
      ),
    );
   }
  }

