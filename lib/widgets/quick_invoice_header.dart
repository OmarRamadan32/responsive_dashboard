
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("Quick Invoice", style: AppStyles.styleSemiBold20),
      Spacer(),
      Container(
        width: 48,
        height: 48,
        decoration: ShapeDecoration(shape: 
        OvalBorder(),
        color: Color(0XFFFAFAFA)
        ),
        child: Icon(Icons.add, color: Color(0XFF3EB7F2)),
      )
    ]);
  }
}
