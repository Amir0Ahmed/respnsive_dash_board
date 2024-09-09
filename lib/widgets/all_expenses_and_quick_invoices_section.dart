import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoices.dart';

class AllExpensesAndQuickInvoicesSection extends StatelessWidget {
  const AllExpensesAndQuickInvoicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoices(),
      ],
    );
  }
}
