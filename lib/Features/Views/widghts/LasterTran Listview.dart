import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/user_info_list_tile.dart';
import 'package:responsive_dashpord/cors/Models/User%20info%20model.dart';
import 'package:responsive_dashpord/cors/utils/app_image.dart';
class LasterTran_Listview extends StatelessWidget {
  const LasterTran_Listview({super.key});
 static const item=[

   UserInfoModel(leading: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
   UserInfoModel(leading: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
   UserInfoModel(leading: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
   UserInfoModel(leading: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
   UserInfoModel(leading: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),

 ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item.map((e) => IntrinsicWidth(child: User_info_list_tile(userInfoModel: e),) ).toList()
      ),
    );
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
          itemBuilder: (context,index){
          return IntrinsicWidth(child: User_info_list_tile(userInfoModel: item[index],));
          }
      ),
    );
  }
}