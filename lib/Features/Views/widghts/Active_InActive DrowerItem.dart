import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../cors/Models/Drower Item Mode.dart';
import '../../../cors/utils/app_styles.dart';

class InActiveDrowerItem extends StatelessWidget {
  const InActiveDrowerItem({
    super.key,
    required this.droweritemmodel,
  });

  final DrowerItemModel droweritemmodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(droweritemmodel.image) ,
      title: Text(droweritemmodel.title,
        style: AppStyles.styleRegular16(context),

      ),
    );
  }
}
class ActiveDrowerItem extends StatelessWidget {
  const ActiveDrowerItem({
    super.key,
    required this.droweritemmodel,
  });

  final DrowerItemModel droweritemmodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(droweritemmodel.image) ,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(droweritemmodel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}
