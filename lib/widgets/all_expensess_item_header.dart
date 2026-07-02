import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0XFFFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_right_rounded, color: Color(0XFF064061)),
      ],
    );
  }
}
