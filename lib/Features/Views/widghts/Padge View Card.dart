import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashpord/Features/Views/widghts/My%20Card%20Widght.dart';
class PadgeViewCard extends StatelessWidget {
  const PadgeViewCard({super.key, required this.pageController});
  final PageController pageController;
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) => My_Card()),
    );
  }
}