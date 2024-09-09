import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_list_item.dart';

class IncomeList extends StatelessWidget {
  const IncomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      children: [
        IncomeListItem(
          title: 'Design service',
          precent: '40',
          color: Color(0xff208CC8),
        ),
        IncomeListItem(
          title: 'Design product',
          precent: '25',
          color: Color(0xff4EB7F2),
        ),
        IncomeListItem(
          title: 'Product royalti',
          precent: '20',
          color: Color(0xff064061),
        ),
        IncomeListItem(
          title: 'Other',
          precent: '22',
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
