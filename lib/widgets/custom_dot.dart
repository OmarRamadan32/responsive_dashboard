import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
    final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height:  8,
      decoration:  ShapeDecoration(shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(12),
      ), color: isActive ? Color(0XFF4DB7F2) : Color(0XFFE7E7E7)),
    );
  }
}
