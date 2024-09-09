import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomListTile(
          title: 'Cash Withdrawal',
          date: '13 Apr, 2022 ',
          price: r'$20,129',
          priceColor: Color(0xffF3735E),
        ),
        const CustomListTile(
          title: 'Landing Page project',
          date: '13 Apr, 2022 at 3:30 PM',
          price: r'$2,000',
        ),
        const CustomListTile(
          title: 'Juni Mobile App project',
          date: '13 Apr, 2022 at 3:30 PM',
          price: r'$20,129',
        ),
      ],
    );
  }
}
