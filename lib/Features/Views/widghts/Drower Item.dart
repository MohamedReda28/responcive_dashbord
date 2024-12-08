import 'package:flutter/material.dart';


import '../../../cors/Models/Drower Item Mode.dart';
import 'Active_InActive DrowerItem.dart';

class DrowerItems extends StatelessWidget {
  const DrowerItems({super.key, required this.droweritemmodel, required this.isActive});
 final DrowerItemModel droweritemmodel ;
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrowerItem(droweritemmodel: droweritemmodel)
        : InActiveDrowerItem(droweritemmodel: droweritemmodel);
  }
}


