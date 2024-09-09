import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    const ItemModel(
        title: 'Balance',
        date: 'April 2022',
        image: Assets.imagesBalance,
        price: r'$20,129'),
    const ItemModel(
        title: 'Income',
        date: 'April 2022',
        image: Assets.imagesIncome,
        price: r'$20,129'),
    const ItemModel(
        title: 'Expenses',
        date: 'April 2022',
        image: Assets.imagesExpenses,
        price: r'$20,129'),
  ];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: AllExpensesItem(
            isActive: currentIndex == 0,
            itemModel: items[0],
          ),
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: AllExpensesItem(
            isActive: currentIndex == 1,
            itemModel: items[1],
          ),
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: AllExpensesItem(
            isActive: currentIndex == 2,
            itemModel: items[2],
          ),
        ),
      ),
    ]);
  }

  void updateIndex(int index) {
    if (currentIndex != index) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
