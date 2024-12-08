import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashpord/cors/utils/app_styles.dart';

import '../../../cors/utils/app_image.dart';

class My_Card extends StatelessWidget {
  const My_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/200,
      child: Container(
        decoration: ShapeDecoration(
          image:  const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesMaskgroup),
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const ListTileCard(),
            const Expanded(child: SizedBox()),
           Padding(
             padding: const EdgeInsets.only(right: 48-24),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text("0918 8124 0042 8129",style: AppStyles.styleSemiBold20(context).copyWith(color: Colors.white),),
                 Text("12/20 - 124",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
               ],
             ),
           ),
            const SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}

class ListTileCard extends StatelessWidget {
  const ListTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: const EdgeInsets.only(right: 42,left: 31,top: 16),
      title:  Text('Name card',style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFFFFFFF),),),
      subtitle:  Text('Syah Bandi',style: AppStyles.styleMeddium20(context).copyWith(color: const Color(0xFFFFFFFF),),),
      trailing: SvgPicture.asset(Assets.imagesGallery),
    );
  }
}
