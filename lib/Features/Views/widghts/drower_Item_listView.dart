import 'package:flutter/material.dart';

import '../../../cors/Models/Drower Item Mode.dart';
import '../../../cors/utils/app_image.dart';
import 'Drower Item.dart';

class drowerItemListView extends StatefulWidget {
  const drowerItemListView({
    super.key,

  });

  @override
  State<drowerItemListView> createState() => _drowerItemListViewState();
}

class _drowerItemListViewState extends State<drowerItemListView> {
  int activeIndxe=0;
 final List<DrowerItemModel> items=[
    const DrowerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrowerItemModel(title: 'My Transaction', image: Assets.imagesTransction),
    const DrowerItemModel(title: 'Statistics', image: Assets.imagesStatistic),
    const DrowerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    const DrowerItemModel(title: 'My Investments', image: Assets.imagesInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              if (activeIndxe!=index) {
                setState(() {
                  activeIndxe=index;
                  print(activeIndxe);
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrowerItems(droweritemmodel: items[index],
                isActive: activeIndxe==index,
              ),
            ),
          );
        });
  }
}
