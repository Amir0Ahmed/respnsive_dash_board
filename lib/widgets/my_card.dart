import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/card_page_view.dart';
import 'package:responsive_dash_board/widgets/dot_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    pageController.addListener(
      () {
        setState(() {
          currentPage = pageController.page?.round() ?? 0;
        });
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 20,
        ),
        CardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotIndicator(
          page: currentPage,
        ),
       
      ],
    );
  }
}
