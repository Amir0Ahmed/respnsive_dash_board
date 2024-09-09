import 'package:flutter/material.dart';

final class SizeConfig {
  static const tabletBreakPoint = 850;
  static const desktopBreakPoint = 1200;
  static late double width, height;
  static init({required BuildContext context}) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
