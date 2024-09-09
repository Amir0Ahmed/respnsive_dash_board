import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          centerSpaceRadius: _getcenterRadius(50.0),
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback:
                (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          sectionsSpace: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        final isTouched = i == touchedIndex;
        final fontSize = isTouched
            ? AppStyles.styleSemiBold18(context).copyWith(
                color: const Color(0xffFFFFFF),
              )
            : AppStyles.styleRegular16(context).copyWith(
                color: const Color(0xffFFFFFF),
              );
        final radius =
            isTouched ? _getcenterRadius(50.0) : _getcenterRadius(40.0);
        switch (i) {
          case 0:
            return PieChartSectionData(
              value: 40,
              title: '40',
              titleStyle: fontSize,
              color: const Color(0xff208CC8),
              radius: radius,
            );
          case 1:
            return PieChartSectionData(
              value: 25,
              title: '25',
              titleStyle: fontSize,
              color: const Color(0xff4EB7F2),
              radius: radius,
            );
          case 2:
            return PieChartSectionData(
              value: 20,
              title: '20',
              titleStyle: fontSize,
              color: const Color(0xff064061),
              radius: radius,
            );
          case 3:
            return PieChartSectionData(
              value: 22,
              title: '22',
              titleStyle: fontSize,
              color: const Color(0xffE2DECD),
              radius: radius,
            );
          default:
            throw Error();
        }
      },
    );
  }

  double _getcenterRadius(double radius) {
    double scaleFactor = _getScaleFactor();
    double responsiveCenterRadius = radius * scaleFactor;
    double lowerLimit = radius * 0.5;
    double upperLimit = radius * 1.2;
    double result = responsiveCenterRadius.clamp(lowerLimit, upperLimit);
    return result;
  }

  double _getScaleFactor() {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletBreakPoint) {
      return width / 650;
    } else if (width < SizeConfig.desktopBreakPoint) {
      return width / 1100;
    } else {
      return width / 1900;
    }
  }
}
