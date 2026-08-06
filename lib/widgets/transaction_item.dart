import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0XFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: ListTile(
        title: Text(model.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          model.subtitle,
          style: AppStyles.styleRegular16(context).copyWith(color: Color(0XFFAAAAAA)),
        ),
        trailing: Text(
          model.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: model.isWithdrawal ? Color(0XFFF3735E) : Color(0XFF7CD87A),
          ),
        ),
      ),
    );
  }
}
