import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class CardsAndTransactionHistorySection extends StatelessWidget {
  const CardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0XFFF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
