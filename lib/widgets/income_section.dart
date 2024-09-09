import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';
import 'package:responsive_dash_board/widgets/income_list.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 2,
                child: IncomeList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
