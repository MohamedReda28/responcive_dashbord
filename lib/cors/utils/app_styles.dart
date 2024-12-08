
import 'dart:ui';
import 'package:flutter/material.dart';

import 'Size config.dart';
abstract class AppStyles{


  // this is function
  static TextStyle styleRegular16(BuildContext context){
    return TextStyle(
      color:  Color(0xFF064061),
      fontSize: GetResponciveFontSize(fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

 //this is varable
  // static  TextStyle styleRegular16 = TextStyle(
  //   color:  Color(0xFF064061),
  //   fontSize: GetResponciveFontSize(fontSize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleMeddium16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: GetResponciveFontSize(fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  // static  TextStyle styleMeddium16 = TextStyle(
  //   color:  Color(0xFF064061),
  //   fontSize: GetResponciveFontSize(fontSize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w500,
  // );

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: GetResponciveFontSize(fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  // static  TextStyle styleSemiBold16 = TextStyle(
  //   color:  Color(0xFF064061),
  //   fontSize: GetResponciveFontSize(fontSize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w600,
  // );

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  // static const TextStyle styleSemiBold20 = TextStyle(
  //   color:  Color(0xFF064061),
  //   fontSize: 20,
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w600,
  // );

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: GetResponciveFontSize(fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  // static  TextStyle styleRegular12 = TextStyle(
  //   color:  Color(0xFFAAAAAA),
  //   fontSize: GetResponciveFontSize(fontSize: 12),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: GetResponciveFontSize(fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }


  // static  TextStyle styleSemiBold24 = TextStyle(
  //   color:  Color(0xFF4EB7F2),
  //   fontSize: GetResponciveFontSize(fontSize: 24),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w600,
  // );

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: GetResponciveFontSize(fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  // static  TextStyle styleRegular14 = TextStyle(
  //   color:  Color(0xFFAAAAAA),
  //   fontSize: GetResponciveFontSize(fontSize: 14),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: GetResponciveFontSize(fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  // static  TextStyle styleSemiBold18 = TextStyle(
  //   color:  Color(0xFF4EB7F2),
  //   fontSize:GetResponciveFontSize(fontSize: 18),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w600,
  // );

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: GetResponciveFontSize(fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  // static  TextStyle styleBold16 = TextStyle(
  //   color:  Color(0xFF4EB7F2),
  //   fontSize:GetResponciveFontSize(fontSize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w700,
  // );

  static TextStyle styleMeddium20(BuildContext context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: GetResponciveFontSize(fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  // static  TextStyle styleMeddium20 = TextStyle(
  //   color:  Color(0xFFFFFFFF),
  //   fontSize:GetResponciveFontSize(fontSize: 20),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w500,
  // );


}


double GetResponciveFontSize({required fontSize}){
  double scalefactor= GetScaleFactor();
  double refactorFontSize= fontSize* scalefactor;
  double lowerLimit= fontSize*.8;
  double upperLimit =fontSize*1.2;
  //print('base font size = $fontSize ,lowerLimit = $lowerLimit , upperLimit = $upperLimit , final font size ${refactorFontSize.clamp(lowerLimit, upperLimit)}');
  return refactorFontSize.clamp(lowerLimit, upperLimit);

}

double GetScaleFactor() {
  //double wight=MediaQuery.sizeOf(context).width;
 var dispatcher= PlatformDispatcher.instance;
 var physicalWidth= dispatcher.views.first.physicalSize.width;
 var devicePexlRatio =dispatcher.views.first.devicePixelRatio;
 double width =physicalWidth/devicePexlRatio;

  if(width<SizeConfig.taplet){
    return width/600;
  }else if(width<SizeConfig.desktop){
    return width/950;
  }else {
    return width/1280;

  }
}
