import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoices_section.dart';
import 'package:responsive_dash_board/widgets/deatails_section.dart';

class MobileDashBoard extends StatefulWidget {
  const MobileDashBoard({super.key});

  @override
  State<MobileDashBoard> createState() => _MobileDashBoardState();
}

class _MobileDashBoardState extends State<MobileDashBoard> {
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
