import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
      child: Row(
        children: const [
          Text("Monthly", style: AppStyles.styleMedium16),
          SizedBox(width: 18),
          Icon(Icons.keyboard_arrow_down_rounded, color: Color(0XFF064061)),
        ],
      ),
    );
  }
}
