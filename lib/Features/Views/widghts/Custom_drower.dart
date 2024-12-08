import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Active_InActive%20DrowerItem.dart';
import 'package:responsive_dashpord/Features/Views/widghts/Drower%20Item.dart';
import 'package:responsive_dashpord/Features/Views/widghts/user_info_list_tile.dart';
import 'package:responsive_dashpord/cors/Models/Drower%20Item%20Mode.dart';
import 'package:responsive_dashpord/cors/Models/User%20info%20model.dart';
import 'package:responsive_dashpord/cors/utils/app_image.dart';

import 'drower_Item_listView.dart';

class Custom_Drower extends StatelessWidget {
  const Custom_Drower({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.sizeOf(context).width *.7,
      color: Colors.white,
      child:  CustomScrollView(
        slivers: [
         SliverToBoxAdapter(child:  User_info_list_tile(
           userInfoModel: const UserInfoModel(
          leading: Assets.imagesAvtar2,
          title: 'Lekan Okeowo',
          subtitle: 'demo@gmail.com'),

           ),
         ),
          const SliverToBoxAdapter(child: SizedBox(height: 8,),),
          const drowerItemListView(),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height:20)),
                InActiveDrowerItem(droweritemmodel: DrowerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSetting2)
                ),
                InActiveDrowerItem(droweritemmodel: DrowerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout)
                ),
                SizedBox(height: 20,),
              ],
            ),
          )

         ],
        ),
    );
  }
}

