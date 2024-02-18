import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular40(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      color: AppColors.backgroundColor,
      fontFamily: 'Irish Grover',
      fontWeight: FontWeight.normal);

  static TextStyle styleSemiBold36(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      color: AppColors.backgroundColor,
      // splashImagetitle => style: italic
      fontFamily:
          'Inter', //number => 'Archivo Black' , splashImagetitle => 'IM FELL French Canon'
      fontWeight: FontWeight.w600 //number/splashImagetitle => normal
      );

  static TextStyle styleRegular32(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      color: AppColors.primaryColor, //driverSafetyColor => black
      fontFamily: 'Inder',
      fontWeight: FontWeight.normal);

  static TextStyle styleRegular24(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: AppColors.backgroundColor,
      fontFamily: 'Archivo Black',
      fontWeight: FontWeight.normal);

  static TextStyle styleRegular20(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: AppColors.mainTextColor,
      fontFamily: 'Archivo Black',
      fontWeight: FontWeight.normal);

  static TextStyle styleExtraBold20(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: AppColors.backgroundColor,
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal);

  static TextStyle styleMedium17(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      color: AppColors.backgroundColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: AppColors.hintTextColor,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletWidth) {
    return width / 550;
  } else if (width < SizeConfig.desktopWidth) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
