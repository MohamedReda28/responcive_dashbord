import 'package:flutter/material.dart';

class Custom_Dot_Indecator extends StatelessWidget {
  const Custom_Dot_Indecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFD6D6D6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
      ),
    );
  }
}
