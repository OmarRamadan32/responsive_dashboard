import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_list.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensessHeader(),
        SizedBox(height: 16),
        AllExpensessItemList(),
      ],
    );
  }
}

