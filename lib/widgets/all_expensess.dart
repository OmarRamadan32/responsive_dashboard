import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItem(
            itemModel: AllExpensessItemModel(
              image: Assets.imagesIncome,
              title: "Income",
              date: 'April 2022',
              price: r'20,129',
            ),
          ),
        ],
      ),
    );
  }
}
