import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        CustomBackgroundContainer(
          child: Column(
            children: [AllExpensess(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}
