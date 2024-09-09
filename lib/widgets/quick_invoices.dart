import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_items_list.dart';
import 'package:responsive_dash_board/widgets/quick_invoices_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoices extends StatelessWidget {
  const QuickInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoicesHeader(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xff064061)),
          ),
          const SizedBox(
            height: 12,
          ),
          const LatestTransactionItemsList(),
          const SizedBox(
            height: 48,
          ),
          const Row(
            children: [
              Expanded(
                child: TitleTextField(
                  title: 'Customer name',
                  hinText: 'Type customer name',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleTextField(
                  title: 'Customer Email',
                  hinText: 'Type customer email',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(
                child: TitleTextField(
                  title: 'Item name',
                  hinText: 'Type customer name',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleTextField(
                  title: 'Item mount',
                  hinText: 'USD',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Add more details',
                    style: AppStyles.styleSemiBold18(context).copyWith(
                      color: const Color(0xff4EB7F2),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color(0xff4EB7F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Add more details',
                    style: AppStyles.styleSemiBold18(context).copyWith(
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
