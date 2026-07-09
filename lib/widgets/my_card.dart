import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syan Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '**** **** **** 1234',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '02/25 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 54 - 28),
          ],
        ),
      ),
    );
  }
}
