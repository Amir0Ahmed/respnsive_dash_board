import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hinText});
  final String title, hinText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffFAFAFA),
            hintText: hinText,
            hintStyle: AppStyles.styleRegular16(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
            border: outlineInputBorder(),
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder(),
          ),
        )
      ],
    );
  }
}

InputBorder? outlineInputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
