import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoices_section.dart';
import 'package:responsive_dash_board/widgets/deatails_section.dart';

class DashBoardMobileLayout extends StatefulWidget {
  const DashBoardMobileLayout({super.key});

  @override
  State<DashBoardMobileLayout> createState() => _DashBoardMobileLayoutState();
}

class _DashBoardMobileLayoutState extends State<DashBoardMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllEpensesAndQuickInvoicesSection(),
          DetailsSection(),
        ],
      ),
    );
  }
}
