import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/background_container.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 20,
            thickness: 1,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
