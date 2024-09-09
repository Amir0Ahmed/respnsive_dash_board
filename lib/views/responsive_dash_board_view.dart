import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/desktop_dash_board.dart';
import 'package:responsive_dash_board/widgets/mobile_dash_board.dart';
import 'package:responsive_dash_board/widgets/tablet_dashboard.dart';

class ResponsivDashBoard extends StatelessWidget {
  const ResponsivDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 850
          ? AppBar(
            
              backgroundColor: const Color(0xffF7F9FA),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 850
          ? SizedBox(
              width: MediaQuery.sizeOf(context).width * .6,
              child: const CustomDrawer(),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileDashBoard(),
        tabletLayout: (context) => const TabletDashBoard(),
        desktopLayout: (context) => const DesktopDashBoard(),
      ),
    );
  }
}
