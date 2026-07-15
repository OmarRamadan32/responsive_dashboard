import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<ItemDetailsModel> itemDetails = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0XFF208BC7),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0XFF4DB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalties',
      value: '20%',
      color: Color(0XFF064060),
    ),
    ItemDetailsModel(title: 'Other', value: '22%', color: Color(0XFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemDetails.length,
      itemBuilder: (context, index) {

      return ItemDetails(
        itemDetailsModel: itemDetails[index]);
    });
  }
}

