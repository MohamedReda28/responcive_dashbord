import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class All_Expenses_Item_Header extends StatelessWidget {
  const All_Expenses_Item_Header({super.key, required this.image,  this.imagebackground,  this.imagecolor});
  final Color? imagebackground,imagecolor;

 final String image;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration:  ShapeDecoration(
                  color: imagebackground??const Color(0xFFF1F1F1),
                  shape: const OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(image,
                  color: imagecolor??const Color(0xFF4EB7F2),
                 ),
                ),
              ),
            ),
          ),
        ),
           const Expanded(child: SizedBox()),
          const Icon(Icons.arrow_forward_ios,),


      ],
    );
  }
}
