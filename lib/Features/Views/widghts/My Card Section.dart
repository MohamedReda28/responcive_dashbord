import 'package:flutter/material.dart';

import '../../../cors/utils/app_styles.dart';
import 'Dots indcator.dart';
import 'Padge View Card.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
   int curntpageindex=0;
  @override
  void initState() {
    pageController =PageController();
    pageController.addListener(() {
      curntpageindex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          width:  420,
          child: Text('My card',style: AppStyles.styleSemiBold20(context),),),
        const SizedBox(height: 20,),
        PadgeViewCard(pageController: pageController),
        const SizedBox(height: 20,),
        Dots_Indcator(curntpageindex:curntpageindex),
        const Divider(height: 40,),





      ],
    );
  }
}
