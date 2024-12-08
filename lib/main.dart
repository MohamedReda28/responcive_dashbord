

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Features/Views/Home view.dart';

void main() {
  runApp(
      DevicePreview(
           enabled: true,
          builder: (context)=>Responsive_DashBoard()));
}

class Responsive_DashBoard extends StatelessWidget {
  const Responsive_DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: Home_Padge(),
    );
  }
}
