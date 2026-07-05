import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = <UserInfoModel>[
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "John Doe",
      subtitle: "demo@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Leo Messi",
      subtitle: "Leo332@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Lekan Okeowo",
      subtitle: "Lekan42@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );


  }
}
