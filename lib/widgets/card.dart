import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(left: 31, right: 24),
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesCard,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Name card',
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Syah Bandi',
                      style: AppStyles.styleMedium20(context).copyWith(
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(Assets.imagesGallery),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: const Color(0xffFFFFFF),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleMedium20(context).copyWith(
                color: const Color(0xffFFFFFF),
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
