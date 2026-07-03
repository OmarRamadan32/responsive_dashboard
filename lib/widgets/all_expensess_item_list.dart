import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensessItemList extends StatefulWidget {
  const AllExpensessItemList({super.key});

  @override
  State<AllExpensessItemList> createState() => _AllExpensessItemListState();
}

final List<AllExpensessItemModel> items = [
  AllExpensessItemModel(
    image: Assets.imagesBalance,
    title: "Balance",
    date: 'April 2022',
    price: r'20,129',
  ),
  AllExpensessItemModel(
    image: Assets.imagesIncome,
    title: "Income",
    date: 'April 2022',
    price: r'20,129',
  ),
  AllExpensessItemModel(
    image: Assets.imagesExpenses,
    title: "Expenses",
    date: 'April 2022',
    price: r'20,129',
  ),
];

int selectedIndex = 0;

class _AllExpensessItemListState extends State<AllExpensessItemList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndes(index);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndes(index);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIndes(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
