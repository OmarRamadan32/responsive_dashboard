import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
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
            color: imageBackground ?? Color(0XFFFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              imageColor ?? Color(0XFF4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: imageColor == null ? Color(0XFF064061) : Colors.white,
        ),
      ],
    );
  }
}
