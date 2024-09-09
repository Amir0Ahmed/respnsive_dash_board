import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

final class AppStyles {
  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.7;
  double upperLimit = fontSize * 1.2;
  double result = responsiveFontSize.clamp(lowerLimit, upperLimit);
  return result;
}

double getScaleFactor(context) {
  // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  // double physicalWidth = dispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 650;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1100;
  } else {
    return width / 1900;
  }
}
