import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xffF1F1F1), width: 1),
              ),
              child: Row(
                children: [
                  Text(
                    'Monthly',
                    style: AppStyles.styleMedium16(context)
                        .copyWith(color: const Color(0xff064061)),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Transform.rotate(
                    angle: -1.57079633,
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff064061),
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
