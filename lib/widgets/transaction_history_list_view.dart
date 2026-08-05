import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = <TransactionModel>[
    TransactionModel(
      title: 'Cash Withdrawal',
      subtitle: '13 April 2022',
      amount: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page Design',
      subtitle: '13 April 2022',
      amount: r"$2,000",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Mobile App Project',
      subtitle: '13 April 2022',
      amount: r"$31,000",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: items.map((e) => TransactionItem(model: e),).toList());
  }
}
