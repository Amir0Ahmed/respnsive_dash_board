import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.page});
  final int page;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ActiveAndInActiveDotIndicator(
            isActive: page == index,
          ),
        ),
      ),
    );
  }
}
