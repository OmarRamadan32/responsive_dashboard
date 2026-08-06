import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: Color(0xFF064060),
        fontSize: getResponsiveFontSize(16, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(16, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(16, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(20, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(16, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(20, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(12, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(24, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(14, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(18, context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
}

double getResponsiveFontSize(double fontSize, BuildContext context) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  //- the Scale Limits
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


double getScaleFactor(BuildContext context) {
  double mobileBaseWidth = 550;
  double tabletBaseWidth = 1000;
  double desktopBaseWidth = 1920;
  double currentWidth = MediaQuery.sizeOf(context).width;
  // if current width is less than the tablet breakpoint then it means that we are on mobile
  if (currentWidth < SizeConfig.tablet) {
    return currentWidth / mobileBaseWidth; // 550 is base width for mobile
  } else if (currentWidth < SizeConfig.desktop) {
    return currentWidth / tabletBaseWidth;
  } else {
    return currentWidth / desktopBaseWidth;
  }
}