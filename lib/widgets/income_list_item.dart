import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeListItem extends StatelessWidget {
  const IncomeListItem(
      {super.key,
      required this.title,
      required this.precent,
      required this.color});
  final String title, precent;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          ClipOval(
            child: Container(
              width: 12,
              height: 12,
              color: color,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular16(context).copyWith(
                  color: const Color(0xff064061),
                ),
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$precent%',
                style: AppStyles.styleMedium16(context).copyWith(
                  color: const Color(0xff208CC8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
