import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, this.isActive, required this.image});
  final bool? isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: isActive == true
                      ? const Color(0xffFFFFFF).withOpacity(.1)
                      : const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        isActive == true
                            ? Colors.white
                            : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 2 * 1.57079633,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: isActive == true ? Colors.white : const Color(0xff064061),
            size: 16,
          ),
        )
      ],
    );
  }
}
