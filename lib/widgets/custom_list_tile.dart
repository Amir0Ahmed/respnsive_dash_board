import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
      required this.date,
      required this.price,
      this.priceColor});
  final String title, date, price;
  final Color? priceColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context).copyWith(
          color: const Color(0xff064061),
        ),
      ),
      subtitle: Text(
        date,
        style: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      trailing: Text(
        price,
        style: AppStyles.styleSemiBold20(context).copyWith(
          color: priceColor ?? const Color(0xff7DD97B),
        ),
      ),
    );
  }
}
